import 'package:flutter/material.dart';

import '../components/categoria_chip.dart';
import '../components/chamado_card.dart';
import '../components/destaque_card.dart';
import '../components/resumo_card.dart';
import '../components/secao_titulo.dart';
import '../models/categoria.dart';
import '../models/status_chamado.dart';
import '../repository/chamado_repository.dart';
import '../theme/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ChamadoRepository _repository = ChamadoRepository();
  Categoria? _categoriaSelecionada;

  @override
  Widget build(BuildContext context) {
    final chamados = _repository.getChamadosPorCategoria(_categoriaSelecionada);
    final destaques = _repository.getDestaques();
    final categorias = _repository.getCategorias();

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 72,
        centerTitle: false,
        titleSpacing: 0,
        leadingWidth: 56,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Center(
            child: Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(color: AppColors.laranja, shape: BoxShape.circle),
              child: const Icon(Icons.location_on, color: Colors.white, semanticLabel: 'Logo Zela Aí'),
            ),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  style: Theme.of(context).textTheme.headlineSmall,
                  children: const [
                    TextSpan(text: 'Zela '),
                    TextSpan(text: 'Aí', style: TextStyle(color: AppColors.laranja)),
                  ],
                ),
              ),
              const Text(
                'Zeladoria urbana · São Paulo',
                style: TextStyle(fontSize: 12, color: AppColors.espressoSuave),
              ),
            ],
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Column(
                children: [
                  ResumoCard(
                    recebidos: _repository.contarPorStatus(StatusChamado.recebido),
                    emExecucao: _repository.contarPorStatus(StatusChamado.emExecucao),
                    resolvidos: _repository.contarPorStatus(StatusChamado.resolvido),
                  ),
                  const SizedBox(height: 18),
                  const SecaoTitulo(
                    titulo: 'Em destaque',
                    subtitulo: 'Chamados com maior impacto na mobilidade',
                  ),
                  const SizedBox(height: 12),
                  DestaqueList(destaques: destaques),
                  const SizedBox(height: 14),
                  const SecaoTitulo(titulo: 'Categorias'),
                  const SizedBox(height: 12),
                  CategoriaList(
                    categorias: categorias,
                    categoriaSelecionada: _categoriaSelecionada,
                    onCategoriaSelecionada: (categoria) {
                      setState(() => _categoriaSelecionada = categoria);
                    },
                  ),
                  const SizedBox(height: 18),
                  SecaoTitulo(
                    titulo: 'Chamados no seu bairro',
                    subtitulo: '${chamados.length} registro(s) · '
                        '${_categoriaSelecionada?.descricao ?? 'Todas as categorias'}',
                  ),
                  const SizedBox(height: 12),
                ],
              ),
            ),
          ),
          if (chamados.isEmpty) const SliverToBoxAdapter(child: _ListaVazia()),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 32),
            sliver: SliverList.separated(
              itemCount: chamados.length,
              separatorBuilder: (_, __) => const SizedBox(height: 12),
              itemBuilder: (context, index) => ChamadoCard(chamado: chamados[index]),
            ),
          ),
        ],
      ),
    );
  }
}

class _ListaVazia extends StatelessWidget {
  const _ListaVazia();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(32),
      child: Column(
        children: [
          Icon(Icons.search_off, size: 48, color: AppColors.laranja),
          SizedBox(height: 8),
          Text('Nenhum chamado nesta categoria.', style: TextStyle(color: AppColors.espressoSuave)),
        ],
      ),
    );
  }
}

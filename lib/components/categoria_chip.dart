import 'package:flutter/material.dart';

import '../models/categoria.dart';
import '../theme/app_colors.dart';
import 'categoria_visual.dart';

class CategoriaChip extends StatelessWidget {
  const CategoriaChip({
    super.key,
    required this.texto,
    required this.icone,
    required this.selecionado,
    required this.onTap,
  });

  final String texto;
  final IconData icone;
  final bool selecionado;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: selecionado ? AppColors.laranja : Colors.white,
      elevation: selecionado ? 4 : 0,
      shadowColor: AppColors.laranja.withAlpha(102),
      shape: StadiumBorder(
        side: BorderSide(color: selecionado ? AppColors.laranja : AppColors.borda),
      ),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 9),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icone, size: 16, color: selecionado ? Colors.white : AppColors.laranja),
              const SizedBox(width: 6),
              Text(
                texto,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: selecionado ? FontWeight.bold : FontWeight.w500,
                  color: selecionado ? Colors.white : AppColors.espresso,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoriaList extends StatelessWidget {
  const CategoriaList({
    super.key,
    required this.categorias,
    required this.categoriaSelecionada,
    required this.onCategoriaSelecionada,
  });

  final List<Categoria> categorias;
  final Categoria? categoriaSelecionada;
  final ValueChanged<Categoria?> onCategoriaSelecionada;

  @override
  Widget build(BuildContext context) {
    final escala = MediaQuery.textScalerOf(context);
    return SizedBox(
      height: 26 + escala.scale(16),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
        itemCount: categorias.length + 1,
        separatorBuilder: (_, __) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          if (index == 0) {
            return CategoriaChip(
              texto: 'Todas',
              icone: Icons.apps,
              selecionado: categoriaSelecionada == null,
              onTap: () => onCategoriaSelecionada(null),
            );
          }
          final categoria = categorias[index - 1];
          return CategoriaChip(
            texto: categoria.descricao,
            icone: categoria.icone,
            selecionado: categoria == categoriaSelecionada,
            onTap: () => onCategoriaSelecionada(categoria),
          );
        },
      ),
    );
  }
}

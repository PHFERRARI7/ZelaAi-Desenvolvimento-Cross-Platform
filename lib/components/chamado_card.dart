import 'package:flutter/material.dart';

import '../models/chamado.dart';
import '../theme/app_colors.dart';
import 'foto_chamado.dart';
import 'info_linha.dart';
import 'status_badge.dart';

class ChamadoCard extends StatelessWidget {
  const ChamadoCard({super.key, required this.chamado});

  final Chamado chamado;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 2,
      shadowColor: AppColors.espresso.withAlpha(40),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22),
        side: const BorderSide(color: AppColors.borda),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FotoChamado(chamado: chamado, largura: 80, altura: 80),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Text(
                              chamado.protocolo,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: AppColors.laranjaEscuro,
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          StatusBadge(status: chamado.status),
                        ],
                      ),
                      const SizedBox(height: 6),
                      Text(
                        chamado.titulo,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(height: 6),
                      InfoLinha(
                        icone: Icons.location_on,
                        texto: '${chamado.rua} · ${chamado.bairro}',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(height: 24, color: AppColors.borda),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InfoLinha(icone: Icons.schedule, texto: chamado.dataAbertura),
                InfoLinha(icone: Icons.groups, texto: '${chamado.quantidadeRelatos} relatos'),
              ],
            ),
            const SizedBox(height: 6),
            Text(
              '${chamado.categorias.map((c) => c.descricao).join(' • ')}  ·  CPF ${chamado.cpfMascarado}',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 12, color: AppColors.espressoSuave),
            ),
          ],
        ),
      ),
    );
  }
}

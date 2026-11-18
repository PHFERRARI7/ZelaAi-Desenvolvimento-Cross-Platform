import 'package:flutter/material.dart';

import '../models/chamado.dart';
import '../theme/app_colors.dart';
import 'foto_chamado.dart';
import 'info_linha.dart';
import 'status_badge.dart';

class DestaqueCard extends StatelessWidget {
  const DestaqueCard({super.key, required this.chamado});

  final Chamado chamado;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 260,
      child: Material(
        color: Colors.white,
        elevation: 4,
        shadowColor: AppColors.espresso.withAlpha(60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
          side: const BorderSide(color: AppColors.borda),
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 170,
              width: double.infinity,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  FotoChamado(chamado: chamado, raio: 0),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: const [0.4, 1],
                        colors: [Colors.transparent, AppColors.espresso.withAlpha(230)],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 12,
                    left: 12,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                      decoration: BoxDecoration(
                        color: AppColors.laranja,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.bolt, size: 14, color: Colors.white),
                          const SizedBox(width: 3),
                          Text(
                            'Prioridade ${chamado.prioridade}',
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 14,
                    right: 14,
                    bottom: 12,
                    child: Text(
                      chamado.titulo,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
              child: Row(
                children: [
                  Expanded(
                    child: InfoLinha(
                      icone: Icons.location_on,
                      texto: chamado.bairro,
                      cor: AppColors.espresso,
                    ),
                  ),
                  const SizedBox(width: 8),
                  StatusBadge(status: chamado.status),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DestaqueList extends StatelessWidget {
  const DestaqueList({super.key, required this.destaques});

  final List<Chamado> destaques;

  @override
  Widget build(BuildContext context) {
    final escala = MediaQuery.textScalerOf(context);
    return SizedBox(
      height: 214 + escala.scale(22),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.fromLTRB(20, 4, 20, 8),
        itemCount: destaques.length,
        separatorBuilder: (_, __) => const SizedBox(width: 14),
        itemBuilder: (context, index) => Align(
          alignment: Alignment.topCenter,
          child: DestaqueCard(chamado: destaques[index]),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class ResumoCard extends StatelessWidget {
  const ResumoCard({
    super.key,
    required this.recebidos,
    required this.emExecucao,
    required this.resolvidos,
  });

  final int recebidos;
  final int emExecucao;
  final int resolvidos;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [AppColors.laranjaClaro, AppColors.laranja, AppColors.laranjaEscuro],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(28),
        boxShadow: [
          BoxShadow(
            color: AppColors.laranja.withAlpha(89),
            blurRadius: 14,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 36,
                height: 36,
                decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                child: const Icon(Icons.phone_android, size: 18, color: AppColors.laranja),
              ),
              const SizedBox(width: 10),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Zeladoria pelo WhatsApp',
                      style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Problemas da sua rua enviados ao 156',
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          Row(
            children: [
              _Indicador(valor: recebidos, rotulo: 'Recebidos'),
              const SizedBox(width: 8),
              _Indicador(valor: emExecucao, rotulo: 'Em execução'),
              const SizedBox(width: 8),
              _Indicador(valor: resolvidos, rotulo: 'Resolvidos', destaque: true),
            ],
          ),
        ],
      ),
    );
  }
}

class _Indicador extends StatelessWidget {
  const _Indicador({required this.valor, required this.rotulo, this.destaque = false});

  final int valor;
  final String rotulo;
  final bool destaque;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 4),
        decoration: BoxDecoration(
          color: destaque ? Colors.white : Colors.white.withAlpha(56),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          children: [
            Text(
              '$valor',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w800,
                color: destaque ? AppColors.laranja : Colors.white,
              ),
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                rotulo,
                maxLines: 1,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: destaque ? AppColors.laranjaEscuro : Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

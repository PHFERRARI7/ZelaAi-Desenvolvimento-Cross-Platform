import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class SecaoTitulo extends StatelessWidget {
  const SecaoTitulo({super.key, required this.titulo, this.subtitulo});

  final String titulo;
  final String? subtitulo;

  @override
  Widget build(BuildContext context) {
    final textos = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Container(
            width: 4,
            height: subtitulo != null ? 38 : 22,
            decoration: BoxDecoration(
              color: AppColors.laranja,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(titulo, style: textos.titleLarge),
                if (subtitulo != null) Text(subtitulo!, style: textos.bodyMedium),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

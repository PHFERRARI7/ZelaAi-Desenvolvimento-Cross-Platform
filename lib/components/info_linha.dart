import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class InfoLinha extends StatelessWidget {
  const InfoLinha({
    super.key,
    required this.icone,
    required this.texto,
    this.cor = AppColors.espressoSuave,
  });

  final IconData icone;
  final String texto;
  final Color cor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icone, size: 14, color: cor),
        const SizedBox(width: 5),
        Flexible(
          child: Text(
            texto,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 13, color: cor),
          ),
        ),
      ],
    );
  }
}

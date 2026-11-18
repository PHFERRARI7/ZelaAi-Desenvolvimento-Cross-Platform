import 'package:flutter/material.dart';

import '../models/status_chamado.dart';
import 'categoria_visual.dart';

class StatusBadge extends StatelessWidget {
  const StatusBadge({super.key, required this.status});

  final StatusChamado status;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: status.cor.withAlpha(31),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 6,
            height: 6,
            decoration: BoxDecoration(color: status.cor, shape: BoxShape.circle),
          ),
          const SizedBox(width: 6),
          Text(
            status.descricao,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: status.cor),
          ),
        ],
      ),
    );
  }
}

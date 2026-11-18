import 'package:flutter/material.dart';

import '../models/categoria.dart';
import '../models/status_chamado.dart';
import '../theme/app_colors.dart';

extension CategoriaVisual on Categoria {
  IconData get icone {
    switch (this) {
      case Categoria.buraco:
        return Icons.construction;
      case Categoria.calcada:
        return Icons.directions_walk;
      case Categoria.iluminacao:
        return Icons.lightbulb;
      case Categoria.acessibilidade:
        return Icons.accessibility;
      case Categoria.lixo:
        return Icons.delete;
      case Categoria.sinalizacao:
        return Icons.traffic;
      case Categoria.arvore:
        return Icons.park;
    }
  }
}

extension StatusVisual on StatusChamado {
  Color get cor {
    switch (this) {
      case StatusChamado.recebido:
        return AppColors.statusRecebido;
      case StatusChamado.emAnalise:
        return AppColors.statusAnalise;
      case StatusChamado.emExecucao:
        return AppColors.statusExecucao;
      case StatusChamado.resolvido:
        return AppColors.statusResolvido;
    }
  }
}

import 'package:flutter/material.dart';

import '../models/chamado.dart';

class FotoChamado extends StatelessWidget {
  const FotoChamado({
    super.key,
    required this.chamado,
    this.largura,
    this.altura,
    this.raio = 16,
  });

  final Chamado chamado;
  final double? largura;
  final double? altura;
  final double raio;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(raio),
      child: Image.asset(
        chamado.imagem,
        width: largura,
        height: altura,
        fit: BoxFit.cover,
        semanticLabel: 'Foto do chamado: ${chamado.titulo}',
      ),
    );
  }
}

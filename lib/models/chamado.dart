import 'categoria.dart';
import 'status_chamado.dart';

class Chamado {
  const Chamado({
    required this.protocolo,
    required this.titulo,
    required this.descricao,
    required this.bairro,
    required this.rua,
    required this.dataAbertura,
    required this.status,
    required this.prioridade,
    required this.quantidadeRelatos,
    required this.cpfMascarado,
    required this.imagem,
    required this.categorias,
    required this.destaque,
  });

  final String protocolo;
  final String titulo;
  final String descricao;
  final String bairro;
  final String rua;
  final String dataAbertura;
  final StatusChamado status;
  final int prioridade;
  final int quantidadeRelatos;
  final String cpfMascarado;
  final String imagem;
  final List<Categoria> categorias;
  final bool destaque;
}

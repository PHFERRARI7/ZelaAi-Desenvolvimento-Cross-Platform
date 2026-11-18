enum StatusChamado {
  recebido('Recebido'),
  emAnalise('Em análise'),
  emExecucao('Em execução'),
  resolvido('Resolvido');

  const StatusChamado(this.descricao);

  final String descricao;
}

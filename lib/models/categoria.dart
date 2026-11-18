enum Categoria {
  buraco('Buraco'),
  calcada('Calçada'),
  iluminacao('Iluminação'),
  acessibilidade('Acessibilidade'),
  lixo('Lixo e entulho'),
  sinalizacao('Sinalização'),
  arvore('Árvores');

  const Categoria(this.descricao);

  final String descricao;
}

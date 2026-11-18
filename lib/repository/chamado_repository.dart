import '../models/categoria.dart';
import '../models/chamado.dart';
import '../models/status_chamado.dart';

class ChamadoRepository {
  final List<Chamado> _chamados = const [
    Chamado(
      protocolo: 'ZA-2026-000184',
      titulo: 'Rampa de acessibilidade quebrada',
      descricao: 'Rampa da esquina está rachada e impede a passagem de cadeirantes.',
      bairro: 'Vila Mariana',
      rua: 'Rua Domingos de Morais, 1200',
      dataAbertura: '10/11/2026 08:42',
      status: StatusChamado.emExecucao,
      prioridade: 95,
      quantidadeRelatos: 12,
      cpfMascarado: '***.482.***-**',
      imagem: 'assets/images/foto_rampa_acessibilidade.jpg',
      categorias: [Categoria.acessibilidade, Categoria.calcada],
      destaque: true,
    ),
    Chamado(
      protocolo: 'ZA-2026-000191',
      titulo: 'Buraco em frente à escola',
      descricao: 'Buraco grande na faixa de pedestres, ao lado da EMEF.',
      bairro: 'Itaquera',
      rua: 'Av. Jacu-Pêssego, 450',
      dataAbertura: '11/11/2026 07:15',
      status: StatusChamado.emAnalise,
      prioridade: 90,
      quantidadeRelatos: 9,
      cpfMascarado: '***.117.***-**',
      imagem: 'assets/images/foto_buraco_escola.jpg',
      categorias: [Categoria.buraco, Categoria.acessibilidade],
      destaque: true,
    ),
    Chamado(
      protocolo: 'ZA-2026-000203',
      titulo: 'Poste apagado no ponto de ônibus',
      descricao: 'Ponto de ônibus totalmente escuro à noite, trecho inseguro.',
      bairro: 'Capão Redondo',
      rua: 'Estrada de Itapecerica, 3100',
      dataAbertura: '11/11/2026 21:03',
      status: StatusChamado.recebido,
      prioridade: 82,
      quantidadeRelatos: 6,
      cpfMascarado: '***.905.***-**',
      imagem: 'assets/images/foto_poste_apagado.jpg',
      categorias: [Categoria.iluminacao],
      destaque: true,
    ),
    Chamado(
      protocolo: 'ZA-2026-000156',
      titulo: 'Calçada afundada perto do hospital',
      descricao: 'Desnível de 10 cm na calçada, risco de queda para idosos.',
      bairro: 'Bela Vista',
      rua: 'Rua Treze de Maio, 870',
      dataAbertura: '08/11/2026 14:20',
      status: StatusChamado.emExecucao,
      prioridade: 88,
      quantidadeRelatos: 7,
      cpfMascarado: '***.330.***-**',
      imagem: 'assets/images/foto_calcada_afundada.jpg',
      categorias: [Categoria.calcada, Categoria.acessibilidade],
      destaque: true,
    ),
    Chamado(
      protocolo: 'ZA-2026-000142',
      titulo: 'Entulho descartado na via',
      descricao: 'Restos de obra ocupando metade da rua e da calçada.',
      bairro: 'Penha',
      rua: 'Rua Padre Benedito de Camargo, 95',
      dataAbertura: '06/11/2026 10:05',
      status: StatusChamado.resolvido,
      prioridade: 60,
      quantidadeRelatos: 3,
      cpfMascarado: '***.761.***-**',
      imagem: 'assets/images/foto_entulho_via.jpg',
      categorias: [Categoria.lixo, Categoria.calcada],
      destaque: false,
    ),
    Chamado(
      protocolo: 'ZA-2026-000177',
      titulo: 'Semáforo de pedestres sem funcionar',
      descricao: 'Botoeira e sinal sonoro para deficientes visuais desligados.',
      bairro: 'Pinheiros',
      rua: 'Rua dos Pinheiros, 1500',
      dataAbertura: '09/11/2026 17:48',
      status: StatusChamado.emAnalise,
      prioridade: 78,
      quantidadeRelatos: 5,
      cpfMascarado: '***.218.***-**',
      imagem: 'assets/images/foto_semaforo_pedestre.jpg',
      categorias: [Categoria.sinalizacao, Categoria.acessibilidade],
      destaque: false,
    ),
    Chamado(
      protocolo: 'ZA-2026-000168',
      titulo: 'Árvore com risco de queda',
      descricao: 'Galho grande inclinado sobre a fiação e o ponto de ônibus.',
      bairro: 'Santana',
      rua: 'Rua Voluntários da Pátria, 2200',
      dataAbertura: '09/11/2026 09:30',
      status: StatusChamado.recebido,
      prioridade: 74,
      quantidadeRelatos: 4,
      cpfMascarado: '***.653.***-**',
      imagem: 'assets/images/foto_arvore_risco.jpg',
      categorias: [Categoria.arvore],
      destaque: false,
    ),
    Chamado(
      protocolo: 'ZA-2026-000131',
      titulo: 'Buraco recorrente na avenida',
      descricao: 'Buraco reaberto após chuva, motos desviando para a calçada.',
      bairro: 'Mooca',
      rua: 'Rua da Mooca, 3050',
      dataAbertura: '04/11/2026 12:10',
      status: StatusChamado.resolvido,
      prioridade: 65,
      quantidadeRelatos: 8,
      cpfMascarado: '***.094.***-**',
      imagem: 'assets/images/foto_buraco_avenida.jpg',
      categorias: [Categoria.buraco],
      destaque: false,
    ),
    Chamado(
      protocolo: 'ZA-2026-000199',
      titulo: 'Placa de rua derrubada',
      descricao: 'Placa com nome da rua caída, dificulta a localização.',
      bairro: 'Lapa',
      rua: 'Rua Guaicurus, 640',
      dataAbertura: '11/11/2026 11:55',
      status: StatusChamado.recebido,
      prioridade: 40,
      quantidadeRelatos: 1,
      cpfMascarado: '***.577.***-**',
      imagem: 'assets/images/foto_placa_derrubada.jpg',
      categorias: [Categoria.sinalizacao],
      destaque: false,
    ),
    Chamado(
      protocolo: 'ZA-2026-000150',
      titulo: 'Lâmpadas queimadas na praça',
      descricao: 'Três postes da praça apagados há mais de uma semana.',
      bairro: 'Tatuapé',
      rua: 'Praça Sílvio Romero, s/n',
      dataAbertura: '07/11/2026 19:22',
      status: StatusChamado.emExecucao,
      prioridade: 58,
      quantidadeRelatos: 4,
      cpfMascarado: '***.846.***-**',
      imagem: 'assets/images/foto_praca_escura.jpg',
      categorias: [Categoria.iluminacao, Categoria.arvore],
      destaque: false,
    ),
  ];

  List<Chamado> getChamados() {
    final lista = List<Chamado>.of(_chamados);
    lista.sort((a, b) => b.prioridade.compareTo(a.prioridade));
    return lista;
  }

  List<Chamado> getChamadosPorCategoria(Categoria? categoria) {
    if (categoria == null) return getChamados();
    return getChamados().where((c) => c.categorias.contains(categoria)).toList();
  }

  List<Chamado> getDestaques() {
    return getChamados().where((c) => c.destaque).toList();
  }

  List<Categoria> getCategorias() => Categoria.values;

  int contarPorStatus(StatusChamado status) {
    return _chamados.where((c) => c.status == status).length;
  }
}

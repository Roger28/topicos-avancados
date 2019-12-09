class Area {
  int _id;
  String _nome;
  String _descricao;
  double _preco;
  Duration _tempoMaximo;

  Area.second();

  Area(this._id, this._nome, this._descricao, this._preco, this._tempoMaximo);

  int get id => _id;
  String get nome => _nome;
  set nome(String nome) => _nome = nome;
  String get descricao => _descricao;
  set descricao(String descricao) => _descricao = descricao;
  double get preco => _preco;
  set preco(double preco) => _preco = preco;
  Duration get tempoMaximo => _tempoMaximo;
  set tempoMaximo(Duration duration) => _tempoMaximo = duration;

  Area.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _nome = json['nome'];
    _descricao = json['descricao'];
    _preco = json['preco'];
    _tempoMaximo = json['tempo_maximo'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = _id;
    data['nome'] = _nome;
    data['descricao'] = _descricao;
    data['preco'] = _preco;
    data['tempo_maximo'] = _tempoMaximo;
    return data;
  }

}
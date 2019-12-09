import 'dart:io';

import 'package:reserva_area/model/area.dart';
import 'package:reserva_area/service/service.dart';

class App {
  final Service _service = Service();
  static App _instance;

  factory App() {
    _instance ??= App._internalConstructor();
    return _instance;
  }

  App._internalConstructor();

  // void _menu() {
  //   print('********************************');
  //   print('******  <Reserva de Área> ******');
  //   print('********************************');
  // }

  void _cadastrar(){
    var area = Area.second();

    print('Nome:');
    area.nome = stdin.readLineSync();
    print('Descricão:');
    area.descricao = stdin.readLineSync();
    print('Preço:');
    area.preco = double.parse(stdin.readLineSync());
    print('Duração em dias:');
    var dias = int.parse(stdin.readLineSync());
    print('Duração em horas:');
    var horas = int.parse(stdin.readLineSync());
    print('Duração em minutos:');
    var minutos = int.parse(stdin.readLineSync());
    var duracao = Duration(days: dias, hours: horas, minutes: minutos);
    area.tempoMaximo = duracao;
    _service.inserir(area);
  }

  void run() {
    _cadastrar();
    _service.listar();
  }
}

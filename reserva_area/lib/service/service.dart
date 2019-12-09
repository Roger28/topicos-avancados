import 'package:reserva_area/model/area.dart';
import 'package:reserva_area/persistence/area_dao.dart';
import 'package:reserva_area/persistence/dao.dart';

class Service {
  final Dao _dao = AreaDao();
  static Service _instance;

  factory Service() {
    _instance ??= Service._internalConstructor();
    return _instance;
  }

  Service._internalConstructor();

  void inserir(Area area) {
    _dao.inserir(area);
  }

  void atualizar(int id) {
    _dao;atualizar(id);
  }

  void deletar(int id) {
    _dao.deletar(id);
  }

  void listar() {
    _dao.listar();
  }
}
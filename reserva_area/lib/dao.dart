import 'area.dart';

abstract class Dao {
  void inserir(Area area);
  void atualizar(int id);
  void deletar(int id);
  List<Area> listar();
}
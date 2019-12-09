import 'package:reserva_area/model/area.dart';

abstract class Dao {
  Future<void> inserir(Area area);
  Future<void> atualizar(int id);
  Future<void> deletar(int id);
  Future<void> listar();
}
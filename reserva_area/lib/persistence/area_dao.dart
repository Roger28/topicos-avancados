import 'dart:io';
import 'dart:async';

import 'package:reserva_area/model/area.dart';
import 'package:reserva_area/persistence/dao.dart';

const String _path = 'area.txt';

class AreaDao extends Dao {
  final File _file = File(_path);
  static Dao _instance;

  factory AreaDao() {
    _instance ??= AreaDao._internalConstructor();
    return _instance;
  }

  AreaDao._internalConstructor();

  @override
  Future<void> inserir(Area area) async {
    if (!await _file.exists()) {
      await _file.create();
    }
    await _file.writeAsString(area.toJson().toString(), mode: FileMode.append);
  }

  @override
  Future<void> atualizar(int id) async {}

  @override
  Future<void> deletar(int id) async {}

  @override
  Future<void> listar() async {
    if (await _file.exists()) {
      var result = await _file.readAsString();
      print(result);
    }
  }

}


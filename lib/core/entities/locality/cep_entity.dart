import 'package:web_service/core/entities/locality/errors/invalid_cep.dart';

class Cep {
  late final String cep;

  String get value => cep;

  Cep({required this.cep});

  factory Cep.create(String cep) {
    if (!validade(cep)) {
      throw InvalidCep("O cep \"$cep\" esta invalido.");
    }
    return Cep(cep: cep);
  }

  static bool validade(String cep) {
    cep = cep.replaceAll(RegExp(r'\D'), "");

    if (cep.length != 8) {
      return false;
    }
    return true;
  }
}

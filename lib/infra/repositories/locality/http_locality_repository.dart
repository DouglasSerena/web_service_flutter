import 'package:dio/dio.dart';
import 'package:web_service/core/entities/locality/cep_entity.dart';
import 'package:web_service/core/entities/locality/locality_entity.dart';
import 'package:web_service/core/repositories/locality/locality_repository.dart';

class HttpLocalityRepository extends ILocalityRepository {
  @override
  Future<Locality> findByCep(String value) async {
    try {
      Cep cep = Cep.create(value);

      Response<dynamic> response =
          await Dio().get("https://brasilapi.com.br/api/cep/v1/${cep.value}");
      dynamic data = response.data!;

      return Locality.create(
        cep: data["cep"],
        city: data["city"],
        state: data["state"],
        street: data["street"],
        neighborhood: data["neighborhood"],
      );
    } catch (error) {
      rethrow;
    }
  }
}

import 'package:web_service/core/entities/locality/locality_entity.dart';
import 'package:web_service/core/usecase/locality/find_locality_by_cep_output.dart';
import '../../repositories/locality/locality_repository.dart';

class FindLocalityByCepUseCase {
  final ILocalityRepository localityRepository;

  FindLocalityByCepUseCase({required this.localityRepository});

  Future<FindLocalityByCepOutput> execute(String cep) async {
    try {
      Locality locality = await localityRepository.findByCep(cep);

      return FindLocalityByCepOutput(
        cep: locality.cep.value,
        city: locality.city,
        state: locality.state,
        street: locality.street,
        neighborhood: locality.neighborhood,
      );
    } catch (error) {
      rethrow;
    }
  }
}

import 'package:web_service/core/usecase/locality/find_locality_by_cep_usecase.dart';
import 'package:web_service/infra/repositories/locality/http_locality_repository.dart';

abstract class FindLocalityByCepFactory {
  static FindLocalityByCepUseCase create() {
    HttpLocalityRepository repository = HttpLocalityRepository();

    return FindLocalityByCepUseCase(localityRepository: repository);
  }
}

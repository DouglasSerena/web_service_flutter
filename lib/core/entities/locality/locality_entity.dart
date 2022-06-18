import 'package:web_service/core/entities/locality/cep_entity.dart';

class Locality {
  final Cep cep;
  final String state;
  final String city;
  final String? neighborhood;
  final String? street;

  Locality({
    required this.cep,
    required this.state,
    required this.city,
    this.neighborhood,
    this.street,
  });

  factory Locality.create({
    required String cep,
    required String state,
    required String city,
    String? neighborhood,
    String? street,
  }) {
    return Locality(
      cep: Cep.create(cep),
      city: city,
      state: state,
      neighborhood: neighborhood,
      street: street,
    );
  }
}

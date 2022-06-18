class FindLocalityByCepOutput {
  final String cep;
  final String state;
  final String city;
  final String? neighborhood;
  final String? street;

  FindLocalityByCepOutput({
    required this.cep,
    required this.state,
    required this.city,
    this.neighborhood,
    this.street,
  });
}

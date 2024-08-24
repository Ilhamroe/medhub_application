class AddressModel {
  String label;
  String number;
  String address;

  AddressModel({
    required this.label,
    required this.number,
    required this.address,
  });
}

List<AddressModel> addressModel = [
  AddressModel(
    label: 'Home',
    number: '(031) 555-024',
    address: 'Jl. Rajawali No. 02, Surabaya',
  ),
  AddressModel(
    label: 'Office',
    number: '(031) 555-024',
    address: 'Jl. Gajah Mada No. 05, Sidoarjo',
  ),
];

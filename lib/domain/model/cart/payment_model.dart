class PaymentModel {
  String label;
  String image;

  PaymentModel({
    required this.label,
    required this.image,
  });
}

List<PaymentModel> paymentModel = [
  PaymentModel(
    label: 'OVO',
    image: 'assets/images/ovo.png',
  ),
  PaymentModel(
    label: 'Dana',
    image: 'assets/images/dana.png',
  ),
  PaymentModel(
    label: 'ShopeePay',
    image: 'assets/images/shopeepay.png',
  ),
  PaymentModel(
    label: 'GoPay',
    image: 'assets/images/gopay.png',
  ),
];


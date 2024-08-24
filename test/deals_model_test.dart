import 'package:flutter_test/flutter_test.dart';
import 'package:medhub_application/domain/model/homepage/deals_model.dart';

void main() {
  group('DealsModel Test', () {
    test('Test menyimpan data dengan benar', () {
      final deal = DealsModel(
        image: 'assets/images/product_1.png',
        title: 'Accu-check Active Test Strip',
        price: 112000,
        rating: 4.2,
        route: '/detailproduct',
      );

      expect(deal.image, 'assets/images/product_1.png');
      expect(deal.title, 'Accu-check Active Test Strip');
      expect(deal.price, 112000);
      expect(deal.rating, 4.2);
      expect(deal.route, '/detailproduct');
    });

    test('Test route dapat nullable', () {
      final deal = DealsModel(
        image: 'assets/images/product_2.png',
        title: 'Omron HEM-8712 BP Monitor',
        price: 150000,
        rating: 4.8,
        route: null,
      );
      expect(deal.route, isNull);
    });

    test('List of DealsModel should contain correct number of items', () {
      expect(dealsModel.length, 6);
    });

    test('Test menyesuaikan jumlah item', () {
      final firstDeal = dealsModel.first;
      expect(firstDeal.title, 'Accu-check Active Test Strip');
      expect(firstDeal.image, 'assets/images/product_1.png');
      expect(firstDeal.price, 112000);
      expect(firstDeal.rating, 4.2);
      expect(firstDeal.route, '/detailproduct');

      final secondDeal = dealsModel[1];
      expect(secondDeal.title, 'Omron HEM-8712 BP Monitor');
      expect(secondDeal.image, 'assets/images/product_2.png');
      expect(secondDeal.price, 150000);
      expect(secondDeal.rating, 4.8);
      expect(secondDeal.route, '/detailproduct');
    });
  });
}

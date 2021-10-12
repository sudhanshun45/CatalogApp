import 'package:catalog_app/models/catalog.dart';

class CartModel {
  late CatalogModel _catalog;

  final List<int> _itemIds = [];

  CatalogModel get catalog => _catalog;
  set catalog(CatalogModel newCatalog) {
    _catalog = newCatalog;

    // ignore: unused_element
  }

  List<Item> get products => _itemIds.map((id) => catalog.getById(id)).toList();

  //get total price
  num get totalPrice =>
      products.fold(0, (total, current) => total + current.price);
}

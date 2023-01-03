import 'package:buy_me/helper/api.dart';
import 'package:buy_me/models/product_model.dart';

class ProductsByCategory {
  Future<List<ProductModel>> getAllProducts(
      {required String categoryName}) async {
    List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$categoryName');

    List<ProductModel> productsList = [];
    for (int n = 0; n < data.length; n++) {
      productsList.add(
        ProductModel.fromJson(data[n]),
      );
    }
    return productsList;
  }
}

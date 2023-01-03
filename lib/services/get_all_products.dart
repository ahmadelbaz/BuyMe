import 'package:buy_me/helper/api.dart';
import 'package:buy_me/models/product_model.dart';

class AllProductsService {
  Future<List<ProductModel>> getAllProducts({String categoryName = ''}) async {
    var httpLink = 'https://fakestoreapi.com/products';
    var linkKey = categoryName.isEmpty ? '' : categoryName;
    // http.Response response = await http.get(Uri.parse('$httpLink/$linkKey'));
    List<dynamic> data = await Api().get(url: '$httpLink/$linkKey');

    List<ProductModel> productsList = [];
    for (int n = 0; n < data.length; n++) {
      productsList.add(
        ProductModel.fromJson(data[n]),
      );
    }
    return productsList;
  }
}

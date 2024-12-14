import 'package:dio/dio.dart';
import 'package:holistic_ecommerce_app/models/product_model.dart';

class ProductService {
  static Dio dio = Dio();
  static Future<ProductModel> fetchData() async {
    try {
      Response response =
          await dio.get("https://student.valuxapps.com/api/home");
      if (response.statusCode == 200) {
        return ProductModel.fromJson(response.data);
      } else {
        throw "Service Error";
      }
    } catch (error) {
      throw Exception(error);
    }
  }
}

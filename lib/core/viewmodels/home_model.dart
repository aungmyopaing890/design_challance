import 'package:designchallange1/core/enum/viewstate.dart';
import 'package:designchallange1/core/models/product.dart';
import 'package:designchallange1/core/models/type.dart';
import 'package:designchallange1/core/services/product_service.dart';
import 'package:designchallange1/core/viewmodels/base_model.dart';
import 'package:designchallange1/locator.dart';

class HomeModel extends BaseModel {
  final ProductService _productService = locator<ProductService>();

  List<Product> _products = [];
  List<ProductType> _typeList = [];

  List<Product> get products => _products;
  List<ProductType> get types => _typeList;

  Future fetchProducts() async {
    setState(ViewState.Busy);
    _products = await _productService.fetchProducts();
    _typeList = await _productService.fetchTypes();
    setState(ViewState.Idle);
  }

  Future fetchProduct() async {
    setState(ViewState.Busy);
    _typeList = await _productService.fetchTypes();
    setState(ViewState.Idle);
  }
}

import 'package:chefvision/data/tflite/detecting_products_tflite.dart';
import 'package:chefvision/domain/repositories/detecting_products_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: DetectingProductsRepository)
class DetectingProductsRepositoryImpl implements DetectingProductsRepository {
  final DetectingProductsTFLite _detectingProductsTFLite;

  DetectingProductsRepositoryImpl(this._detectingProductsTFLite);

  @override
  Future<void> closeInterpreter() async {
    await _detectingProductsTFLite.closeInterpreter();
  }

  @override
  Future<void> createInterpreter(String path) async {
    await _detectingProductsTFLite.createInterpreter(path);
  }

  @override
  Future<List<dynamic>> getDetectedProducts(String inputPhoto) async {
    return await _detectingProductsTFLite.getDetectedProducts(inputPhoto);
  }
}

import 'package:chefvision/domain/repositories/detecting_products_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetDetectedProductsUseCase {
  final DetectingProductsRepository _detectingProductsRepository;

  GetDetectedProductsUseCase(this._detectingProductsRepository);

  Future<List<dynamic>?> call({
    required String inputPhoto,
  }) async {
    return await _detectingProductsRepository.getDetectedProducts(inputPhoto);
  }
}

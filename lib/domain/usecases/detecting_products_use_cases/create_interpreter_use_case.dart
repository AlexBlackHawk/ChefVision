import 'package:chefvision/domain/repositories/detecting_products_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class CreateInterpreterUseCase {
  final DetectingProductsRepository _detectingProductsRepository;

  CreateInterpreterUseCase(this._detectingProductsRepository);

  Future<void> call({
    required String path,
  }) async {
    await _detectingProductsRepository.createInterpreter(path);
  }
}

import 'package:chefvision/domain/repositories/detecting_products_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class CloseInterpreterUseCase {
  final DetectingProductsRepository _detectingProductsRepository;

  CloseInterpreterUseCase(this._detectingProductsRepository);

  Future<void> call() async {
    await _detectingProductsRepository.closeInterpreter();
  }
}

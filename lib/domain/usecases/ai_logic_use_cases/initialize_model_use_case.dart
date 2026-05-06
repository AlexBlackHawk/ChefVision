import 'package:chefvision/domain/repositories/ai_logic_repository.dart';
import 'package:firebase_ai/firebase_ai.dart';
import 'package:injectable/injectable.dart';

@injectable
class InitializeModelUseCase {
  final AILogicRepository _aiLogicRepository;

  InitializeModelUseCase(this._aiLogicRepository);

  void call({
    required String modelName,
    required Schema jsonSchema,
  }) {
    return _aiLogicRepository.initializeModel(modelName, jsonSchema);
  }
}

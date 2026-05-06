import 'package:chefvision/domain/repositories/ai_logic_repository.dart';
import 'package:firebase_ai/firebase_ai.dart';
import 'package:injectable/injectable.dart';

@injectable
class CreateTextContentUseCase {
  final AILogicRepository _aiLogicRepository;

  CreateTextContentUseCase(this._aiLogicRepository);

  Content? call({
    required String promptText,
  }) {
    return _aiLogicRepository.createTextContent(promptText);
  }
}

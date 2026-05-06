import 'package:chefvision/domain/repositories/ai_logic_repository.dart';
import 'package:firebase_ai/firebase_ai.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetThoughtsTokenCountUseCase {
  final AILogicRepository _aiLogicRepository;

  GetThoughtsTokenCountUseCase(this._aiLogicRepository);

  int? call({
    required GenerateContentResponse response,
  }) {
    return _aiLogicRepository.getThoughtsTokenCount(response);
  }
}

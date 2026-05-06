import 'package:chefvision/domain/repositories/ai_logic_repository.dart';
import 'package:firebase_ai/firebase_ai.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetTotalTokenCountUseCase {
  final AILogicRepository _aiLogicRepository;

  GetTotalTokenCountUseCase(this._aiLogicRepository);

  int? call({
    required GenerateContentResponse response,
  }) {
    return _aiLogicRepository.getTotalTokenCount(response);
  }
}

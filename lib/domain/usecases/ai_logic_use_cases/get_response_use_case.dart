import 'package:chefvision/domain/repositories/ai_logic_repository.dart';
import 'package:firebase_ai/firebase_ai.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetResponseUseCase {
  final AILogicRepository _aiLogicRepository;

  GetResponseUseCase(this._aiLogicRepository);

  Future<GenerateContentResponse?> call({
    required List<Content> prompt,
  }) async {
    return await _aiLogicRepository.getResponse(prompt);
  }
}

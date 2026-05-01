import 'dart:io';

import 'package:chefvision/domain/repositories/ml_model_downloader_repository.dart';
import 'package:firebase_ml_model_downloader/firebase_ml_model_downloader.dart';
import 'package:injectable/injectable.dart';

@injectable
class DownloadMLModelUseCase {
  final MLModelDownloaderRepository _mlModelDownloaderRepository;

  DownloadMLModelUseCase(this._mlModelDownloaderRepository);

  Future<File> call({
    required String modelName,
    required FirebaseModelDownloadType downloadType,
    required FirebaseModelDownloadConditions? conditions,
  }) async {
    return await _mlModelDownloaderRepository.downloadMLModel(modelName, downloadType, conditions);
  }
}

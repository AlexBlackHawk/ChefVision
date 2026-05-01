import 'dart:io';

import 'package:firebase_ml_model_downloader/firebase_ml_model_downloader.dart';

class MLModelDownloaderFirebase {
  const MLModelDownloaderFirebase(this._mlModelDownloader);

  final FirebaseModelDownloader _mlModelDownloader;

  Future<File> downloadMLModel(String modelName, FirebaseModelDownloadType downloadType, FirebaseModelDownloadConditions? conditions) async {
    FirebaseCustomModel model = await _mlModelDownloader.getModel(modelName, downloadType, conditions);
    return model.file;
  }
}

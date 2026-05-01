import 'dart:io';

import 'package:firebase_ml_model_downloader/firebase_ml_model_downloader.dart';

abstract interface class MLModelDownloaderRepository {
  Future<File> downloadMLModel(String modelName, FirebaseModelDownloadType downloadType, FirebaseModelDownloadConditions? conditions);
}

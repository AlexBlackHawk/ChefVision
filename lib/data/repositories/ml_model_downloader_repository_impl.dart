import 'dart:io';

import 'package:chefvision/data/firebase/ml_model_downloader_firebase.dart';
import 'package:chefvision/domain/repositories/ml_model_downloader_repository.dart';
import 'package:firebase_ml_model_downloader/firebase_ml_model_downloader.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: MLModelDownloaderRepository)
class MLModelDownloaderRepositoryImpl implements MLModelDownloaderRepository {
  final MLModelDownloaderFirebase _mlModelDownloaderFirebase;

  MLModelDownloaderRepositoryImpl(this._mlModelDownloaderFirebase);

  @override
  Future<File> downloadMLModel(String modelName, FirebaseModelDownloadType downloadType, FirebaseModelDownloadConditions? conditions) async {
    return await _mlModelDownloaderFirebase.downloadMLModel(modelName, downloadType, conditions);
  }
}

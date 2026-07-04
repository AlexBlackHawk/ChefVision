abstract interface class DetectingProductsRepository {
  Future<void> createInterpreter(String path);

  Future<List<dynamic>> getDetectedProducts(String inputPhoto);

  Future<void> closeInterpreter();
}

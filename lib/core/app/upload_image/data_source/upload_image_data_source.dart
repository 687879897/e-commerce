

import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';

import '../../../serviec/graphql/api_service.dart';
import '../model/upload_image_response.dart';

class UploadImageDataSource {
  const UploadImageDataSource(this._api);

  final ApiService _api;

  Future<UploadImageResourse> uploadImage({
    required XFile imageFile,
  }) async {
    final fromData = FormData();

    fromData.files.add(
      MapEntry('file', await MultipartFile.fromFile(imageFile.path)),
    );

    final response = await _api.uploadImage(fromData);

    return response;
  }
}

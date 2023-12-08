import 'package:dio/dio.dart';
import 'package:test_project_flutter/src/core/extensions/map_indexed.dart';
import 'package:test_project_flutter/src/core/network/interfaces/base_model.dart';

/// Класс который занимается десериализацией обьектов

class NetworkDecoder {
  K decode<K, T>(
      {required Response response, required BaseModel responseType}) {
    try {
      if (response.data is List) {
        final list = response.data as List;

        return List<T>.from(list.mapToList(
            (e) => responseType.fromJson(e as Map<String, dynamic>))) as K;
      } else {
        return responseType.fromJson(response.data as Map<String, dynamic>)
            as K;
      }
    } on Object {
      rethrow;
    }
  }
}

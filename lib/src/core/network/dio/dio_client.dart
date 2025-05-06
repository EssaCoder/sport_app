import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sport_app/env/env.dart';

part 'dio_client.g.dart';
part 'dio_interceptor.dart';
part 'network_info.dart';

/// The dio client used in the app.
///
/// This is a class that contains the dio client used in the app.
/// It is used to handle the dio client used in the app.
///
///
@riverpod
Dio dioClient(Ref ref) {
  final dio = Dio();
  dio.options.baseUrl = Env.BASE_URL;
  dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
  return dio;
}

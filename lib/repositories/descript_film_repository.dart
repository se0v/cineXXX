import 'package:dio/dio.dart';
import 'package:fluttapp/repositories/crypto_coins/abstract_coins_repository.dart';
import 'package:fluttapp/repositories/crypto_coins/models/crypto_coin.dart';
import 'package:flutter/material.dart';

class DescriptFilmRepository implements AbstractCoinsRepository {
  DescriptFilmRepository({required this.dio});
  final Dio dio;

  @override
  Future<List<CryptoCoin>> getCoinsList() async {
    try {
      final response = await dio.get(
        'https://kinopoiskapiunofficial.tech/api/v2.2/films/collections?type=TOP_POPULAR_MOVIES&page=1',
        options: Options(
          headers: {
            'X-API-KEY': 'b3f4329b-8220-4a11-b6f3-e983817b8b1a',
          },
        ),
      );

      final data = response.data as Map<String, dynamic>;
      final items = data['items'] as List<dynamic>;

      final cryptoCoinsList = items.map((item) {
        final nameRu = item['nameRu'];
        final posterUrl = item['posterUrl'];

        return CryptoCoin(
          nameRu: nameRu,
          posterUrl: posterUrl,
          year: 0,
        );
      }).toList();

      return cryptoCoinsList;
    } catch (error) {
      debugPrint('Ошибка при выполнении запроса: $error');
      // Обработайте ошибку соответствующим образом
      return []; // или другая обработка ошибки
    }
  }
}

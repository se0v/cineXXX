import 'package:fluttapp/repositories/crypto_coins/models/descript_film.dart';

import '../features/crypto_coin/view/crypto_coin_screen.dart';
import '../features/crypto_list/view/crypto_list_screen.dart';

final DescriptFilm yourDescriptFilmObject = DescriptFilm(
  nameRu: 'Название фильма',
  genre: 'Жанр',
  country: 'Страна',
  posterUrl: 'URL постера фильма',
);

final routes = {
  '/': (context) => const CryptoListScreen(
        title: 'CineX',
      ),
  '/coin': (context) => CryptoCoinScreen(descript: yourDescriptFilmObject),
};

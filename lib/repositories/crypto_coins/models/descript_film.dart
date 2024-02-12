import 'package:equatable/equatable.dart';

class DescriptFilm extends Equatable {
  const DescriptFilm({
    required this.nameRu,
    required this.genre,
    required this.country,
    required this.posterUrl,
  });

  final String nameRu;
  final String genre;
  final String country;
  final String posterUrl;
  final String descript = "";

  @override
  List<Object?> get props => [nameRu, genre, country, posterUrl, descript];
}

import 'package:equatable/equatable.dart';

class CryptoCoin extends Equatable {
  const CryptoCoin({
    required this.nameRu,
    required this.year,
    required this.posterUrl,
  });

  final String nameRu;
  final int year;
  final String posterUrl;

  @override
  List<Object?> get props => [nameRu, year, posterUrl];
}

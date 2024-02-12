import 'package:fluttapp/repositories/crypto_coins/models/descript_film.dart';
import 'package:flutter/material.dart';

class CryptoCoinScreen extends StatefulWidget {
  const CryptoCoinScreen({
    Key? key,
    required this.descript,
  }) : super(key: key);

  final DescriptFilm descript;

  @override
  State<CryptoCoinScreen> createState() => _CryptoCoinScreenState();

  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

class _CryptoCoinScreenState extends State<CryptoCoinScreen> {
  String? coinName;

  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;
    //assert (args != null && args is String, 'You must provide String args');//instead of "if.."
    if (args == null) {
      debugPrint("You must provide args");
      return;
    }
    if (args is! String) {
      debugPrint("You must provide String args");
      return;
    }
    coinName = args;
    setState(() {});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(coinName ?? 'Coming soon'),
      ),
    );
  }
}

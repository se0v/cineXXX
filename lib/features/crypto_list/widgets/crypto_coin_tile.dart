import 'package:fluttapp/repositories/crypto_coins/models/crypto_coin.dart';
import 'package:flutter/material.dart';

class CryptoCoinTile extends StatelessWidget {
  const CryptoCoinTile({
    Key? key,
    required this.coin,
  }) : super(key: key);

  final CryptoCoin coin;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      leading: Image.network(coin.posterUrl),
      /*SvgPicture.asset('assets/svg/bitcoin_logo.svg',
        height: 30, width: 30,),*/
      title: Text(
        coin.nameRu,
        style: theme.textTheme.bodyMedium,
      ),
      subtitle: Text(
        "${coin.year}",
        style: theme.textTheme.labelSmall,
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.of(context).pushNamed(
          '/coin',
          arguments: coin,
        ); //instead of "push(.."
        // MaterialPageRoute(
        //     builder: (context) => const CryptoCoinScreen(),
      },
    );
  }
// floatingActionButton: FloatingActionButton(
//   onPressed: _incrementCounter,
//   tooltip: 'Increment',
//   child: const Icon(Icons.add),
// ),
}

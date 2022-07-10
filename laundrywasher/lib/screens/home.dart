import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/acceptedOrder.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/HomeScreen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //   backgroundColor: Theme.of(context).backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: SafeArea(
            child: Column(
          children: [
            const Text(
              ' Accepting Order',
              style: ktextStyle,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 8, 0, 50),
              height: MediaQuery.of(context).size.height * .5,
              child: ListView.builder(
                itemBuilder: (index, ctx) {
                  return AcceptedTile(tknNO: 'tknNO', status: 'status');
                },
                itemCount: 5,
              ),
            ),
            const ListTile(
              contentPadding: const EdgeInsets.fromLTRB(40, 18, 40, 18),
              title: Text('Pricing'),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            )
          ],
        )),
      ),
    );
  }
}

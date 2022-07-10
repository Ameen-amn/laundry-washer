import 'package:flutter/material.dart';

class AcceptedTile extends StatelessWidget {
  final String tknNO;
  final String status;
  const AcceptedTile({Key? key, required this.tknNO, required this.status})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('routeName');
      },
      child: ListTile(
        contentPadding: const EdgeInsets.fromLTRB(42, 18, 42, 18),
        title: Text(tknNO),
        subtitle: Text(status),
      ),
    );
  }
}

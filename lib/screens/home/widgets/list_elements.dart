import 'package:flutter/material.dart';

class ListElements extends StatelessWidget {
  final String title;
  final List<String> listOfElements;

  const ListElements({
    required this.title,
    required this.listOfElements,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
        ),
        Column(
          children: buildList(listOfElements),
        )
      ],
    );
  }

  List<Widget> buildList(
    List<String> itens,
  ) {
    List<Widget> listOfWidgets = [];
    itens.forEach((element) {
      listOfWidgets.add(
        Text(
          element,
        ),
      );
    });
    return listOfWidgets;
  }
}

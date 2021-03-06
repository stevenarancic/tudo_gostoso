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
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: buildList(listOfElements),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> buildList(
    List<String> itens,
  ) {
    List<Widget> listOfWidgets = [];
    itens.forEach((element) {
      listOfWidgets.add(
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Text(
            element,
          ),
        ),
      );
    });
    return listOfWidgets;
  }
}

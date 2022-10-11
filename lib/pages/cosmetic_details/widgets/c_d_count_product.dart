import 'package:flutter/material.dart';

class CosmeticDetailsCountProduct extends StatefulWidget {
  const CosmeticDetailsCountProduct({Key? key}) : super(key: key);

  @override
  State<CosmeticDetailsCountProduct> createState() =>
      _CosmeticDetailsCountProductState();
}

class _CosmeticDetailsCountProductState
    extends State<CosmeticDetailsCountProduct> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      decoration: BoxDecoration(
          border: const Border(
            top: BorderSide(width: 1.0, color: Colors.black),
            left: BorderSide(width: 1.0, color: Colors.black),
            right: BorderSide(width: 1.0, color: Colors.black),
            bottom: BorderSide(width: 1.0, color: Colors.black),
          ),
          borderRadius: BorderRadiusDirectional.circular(25)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            iconSize: 15,
            padding: const EdgeInsets.all(0),
            onPressed: () => setState(() {
              if (count > 0) {
                count -= 1;
              } else {
                count = 0;
              }
            }),
            icon: const Icon(Icons.remove),
          ),
          Text('$count', style: const TextStyle(fontSize: 15)),
          IconButton(
            iconSize: 15,
            padding: const EdgeInsets.all(0),
            onPressed: () => setState(() => count += 1),
            icon: const Icon(Icons.add),
          )
        ],
      ),
    );
  }
}

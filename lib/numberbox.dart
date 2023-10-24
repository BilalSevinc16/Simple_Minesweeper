import 'package:flutter/material.dart';

class MyNumberBox extends StatelessWidget {
  final int child;
  final bool revealed;
  final VoidCallback function;

  const MyNumberBox({
    Key? key,
    required this.child,
    required this.revealed,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Padding(
        padding: const EdgeInsets.all(1),
        child: Container(
          color: revealed ? Colors.grey.shade300 : Colors.grey.shade400,
          child: Center(
            child: Text(
              revealed ? (child == 0 ? "" : child.toString()) : "",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: child == 1
                    ? Colors.blue
                    : (child == 2 ? Colors.green : Colors.red),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

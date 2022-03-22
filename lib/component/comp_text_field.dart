import 'package:flutter/material.dart';

class CompTextFieldV1 extends StatefulWidget {
  const CompTextFieldV1({
    Key? key,
    required this.hintText,
    this.obscureText = false,
    this.borderActive = false,
  }) : super(key: key);
  final String hintText;
  final bool obscureText;
  final bool borderActive;

  @override
  _CompTextFieldV1State createState() => _CompTextFieldV1State();
}

class _CompTextFieldV1State extends State<CompTextFieldV1> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: SizedBox(
        height: 58,
        child: PhysicalModel(
          color: Colors.white,
          shadowColor: Colors.black.withOpacity(.2),
          elevation: 2.5,
          borderRadius: BorderRadius.circular(10),
          child: TextField(
            obscureText: widget.obscureText,
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              hintText: widget.hintText,
              // ignore: prefer_const_constructors
              hintStyle: TextStyle(
                fontSize: 15,
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 10,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}

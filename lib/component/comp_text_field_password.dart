import 'package:cari_penginapan/pages/utilities/constant.dart';
import 'package:flutter/material.dart';

class CompTextFieldV2 extends StatefulWidget {
  const CompTextFieldV2({
    Key? key,
    required this.hintText,
    this.obscureText = false,
    this.borderActive = false,
  }) : super(key: key);
  final String hintText;
  final bool obscureText;
  final bool borderActive;

  @override
  _CompTextFieldV2State createState() => _CompTextFieldV2State();
}

class _CompTextFieldV2State extends State<CompTextFieldV2> {
  bool _isObscure = true;
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
            obscureText: _isObscure,
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
              suffixIcon: IconButton(
                icon: Icon(
                  _isObscure ? Icons.visibility : Icons.visibility_off,
                  color: _isObscure ? purpleColor : greyColor,
                ),
                onPressed: () {
                  setState(
                    () {
                      _isObscure = !_isObscure;
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

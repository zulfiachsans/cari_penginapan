// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../component/comp_rich_text.dart';
import '../lupa_password/new_pass.dart';

class ConfirmEmail extends StatefulWidget {
  const ConfirmEmail({Key? key}) : super(key: key);

  @override
  _ConfirmEmailState createState() => _ConfirmEmailState();
}

class _ConfirmEmailState extends State<ConfirmEmail> {
  handleLanjutkannanti(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const NewPass(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final image = Padding(
      padding: EdgeInsets.only(bottom: size.height * .0431),
      child: SizedBox(
        height: size.height * .2,
        child: Image.asset('assets/images/email_illustration.png'),
      ),
    );
    final textSlog = CompRichText(
      title: "Cek Email Anda",
      text:
          "Kami telah Mengirimkan Kode untuk anda agar anda dapat merubah password anda",
    );
    final buttonOpenEmail = Padding(
      padding: EdgeInsets.only(top: size.height * .025),
      child: SizedBox(
        width: size.width * .8,
        height: size.height * .0714,
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Anda Membuka Email"),
              ),
            );
          },
          child: const Text(
            "BUKA EMAIL",
          ),
        ),
      ),
    );
    final linkNext = TextButton(
      onPressed: () => handleLanjutkannanti(context),
      child: const Text(
        "Lanjutkan dan konfirmasi nanti",
        style: TextStyle(
          decoration: TextDecoration.underline,
        ),
      ),
    );

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [image, textSlog, buttonOpenEmail, linkNext],
        ),
      ),
    );
  }
}

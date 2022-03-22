// ignore_for_file: prefer_const_constructors

import 'package:cari_penginapan/pages/utilities/constant.dart';
import 'package:flutter/material.dart';

import '../../component/comp_rich_text.dart';
import '../../component/comp_text_field_password.dart';
import '../login.dart';

class NewPass extends StatefulWidget {
  const NewPass({Key? key}) : super(key: key);

  @override
  _NewPassState createState() => _NewPassState();
}

class _NewPassState extends State<NewPass> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: AppBar().preferredSize.height,
              ),
              CompRichText(
                align: TextAlign.start,
                title: "Buat Password Baru",
                text:
                    "Silahkan masukkan kata sandi baru anda kata sandi baru harus berbeda dari kata sandi yang digunakan sebelumnya\n",
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text('Password'),
              ),
              CompTextFieldV2(hintText: 'Password Baru'),
              SizedBox(height: size.height * .025),
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text('Konfirmasi Password'),
              ),
              CompTextFieldV2(hintText: 'Konfirmasi Password'),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: size.height * .03),
                  child: SizedBox(
                    width: size.width * .8,
                    height: size.height * .0714,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (contex) => Login(),
                          ),
                        );
                      },
                      child: const Text("Ubah Password"),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16)
            ],
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    final icon = Icon(
      Icons.chevron_left_rounded,
      size: 30,
      color: greyColor,
    );
    const text = Text(
      "Kembali",
      style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18),
    );
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leadingWidth: 120,
      leading: TextButton(
        style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap),
        child: Row(
          children: [icon, text],
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

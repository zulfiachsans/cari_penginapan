import 'package:flutter/material.dart';

import '../../component/comp_rich_text.dart';
import '../../component/comp_text_field.dart';
import '../confirm_email/confirm_email.dart';
import 'package:cari_penginapan/pages/utilities/constant.dart';

class LupaPass extends StatefulWidget {
  const LupaPass({Key? key}) : super(key: key);

  @override
  _LupaPassState createState() => _LupaPassState();
}

class _LupaPassState extends State<LupaPass> {
  @override
  void handleLanjutkan(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const ConfirmEmail(),
      ),
    );
  }

  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: AppBar().preferredSize.height,
                ),
                CompRichText(
                  align: TextAlign.start,
                  title: "Ubah Password",
                  text:
                      "Masukkan email yang terkait dengan akun Anda dan kami akan mengirim email dengan instruksi untuk mengatur ulang kata sandi Anda\n",
                ),
                CompTextFieldV1(hintText: 'Alamat Email Anda'),
                Padding(
                  padding: EdgeInsets.only(top: size.height * .03),
                  child: SizedBox(
                    width: size.width * .8,
                    height: size.height * .0714,
                    child: ElevatedButton(
                      onPressed: () => handleLanjutkan(context),
                      child: const Text("LANJUTKAN"),
                    ),
                  ),
                ),
              ],
            ),
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
        color: Colors.black,
        fontWeight: FontWeight.w600,
        fontSize: 18,
      ),
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
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}

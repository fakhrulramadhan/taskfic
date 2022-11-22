import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ltfm_sign_up_controller.dart';

class LtfmSignUpView extends StatefulWidget {
  const LtfmSignUpView({Key? key}) : super(key: key);

  Widget build(context, LtfmSignUpController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtfmSignUp"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              //! 1. Buatlah textfield email
              //! 2. Buatlah textfield password
              //! 3. Buatlah textfield confirm password
              //! 4. Buat sebuah tombol,
              //gunakan icon: Icons.login
              //atur text-nya: Login
              //ketika di klik, panggil:
              // controller.doLogin()
              //Jika dialog muncul ketika tombol di klik, tasks ini selesai

              TextFormField(
                initialValue: 'Email',
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.grey),
                    suffixIcon: Icon(Icons.email),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueGrey)),
                    helperText: 'Masukkan alamat Email'),
                onChanged: (value) {},
              ),

              TextFormField(
                initialValue: 'Password',
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: const InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.grey),
                    suffixIcon: Icon(Icons.email),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueGrey)),
                    helperText: 'Masukkan Password'),
                onChanged: (value) {},
              ),

              TextFormField(
                initialValue: 'Confirm Password',
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: const InputDecoration(
                    labelText: 'Confirm Password',
                    labelStyle: TextStyle(color: Colors.grey),
                    suffixIcon: Icon(Icons.email),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueGrey)),
                    helperText: 'Konfirmasi Password'),
                onChanged: (value) {},
              ),

              const SizedBox(
                height: 10,
              ),

              ElevatedButton(
                  onPressed: () {
                    controller.doLogin();
                  },
                  child: const Text("Masuk"))
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LtfmSignUpView> createState() => LtfmSignUpController();
}

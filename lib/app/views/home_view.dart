import 'package:currency_converter/app/components/currency_row.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.only(
                top: 100,
                left: 30,
                right: 30,
                bottom:
                    15), //o bottom serve pra n pegar os botoes de navegaçao ali em baixo
            child: Column(
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: 150,
                  height: 150,
                ),
                SizedBox(
                  height: 50,
                ),
                CurrencyRow(),
                SizedBox(height: 10),
                CurrencyRow(),
                SizedBox(height: 30),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.amber[500])),
                  child: Text('Converter'),
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

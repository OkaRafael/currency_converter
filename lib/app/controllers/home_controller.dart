import 'package:currency_converter/app/models/currency_model.dart';
import 'package:flutter/cupertino.dart';

class HomeController {
  List<CurrencyModel> currencies;

  TextEditingController toText = TextEditingController();
  TextEditingController fromText = TextEditingController();

  CurrencyModel toCurrency;
  CurrencyModel fromCurrency;

  HomeController() {
    currencies = CurrencyModel.getCurrencies();
    toCurrency = currencies[0];
    fromCurrency = currencies[1]; //so pra esses valores nao inicializarem nulos
  }

  convert() {
    String text = toText.text;
    double value = double.tryParse(text) ?? 1.0;
    double returnValue = 0;

    if (fromCurrency.name == 'Real') {
      returnValue = toCurrency.real * value;
    } else if (fromCurrency.name == 'Dolar') {
      returnValue = toCurrency.dolar * value;
    } else if (fromCurrency.name == 'Euro') {
      returnValue = toCurrency.euro * value;
    } else if (fromCurrency.name == 'Bitcoin') {
      returnValue = toCurrency.bitcoin * value;
    }

    fromText.text = returnValue.toStringAsFixed(2);
  }
}

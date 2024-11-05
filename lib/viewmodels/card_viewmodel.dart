import 'package:flutter/material.dart';
import '../models/card_model.dart';

class CardViewModel extends ChangeNotifier {
  CardModel card = CardModel(
    cardNumber: "2781 8191 6671 3190",
    userName: "Jude Kyllan Jr.",
    expiryDate: "09/29",
  );

  String mainTitle = "Effortless Bank Simplified";
  String subtitle =
      "Experience seamless financial management makes managing your finances easy and intuitive";
  String buttonTitle = "Join Velobank Now";
}

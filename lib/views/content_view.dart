import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/card_viewmodel.dart';
import 'dashboard_view.dart'; // Import halaman baru di sini

class ContentView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<CardViewModel>(context);

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),

          // Card View with rotation
          Transform.rotate(
            angle: -0.1, // Adjust angle as desired for the tilt effect
            child: Container(
              width: 300,
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: LinearGradient(
                  colors: [Colors.pink, Colors.green],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    viewModel.card.cardNumber,
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    viewModel.card.userName,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Exp ${viewModel.card.expiryDate}",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(
              height:
                  24), // Adjusted spacing to bring elements closer to the button

          // Main Title
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              viewModel.mainTitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),

          SizedBox(height: 8),

          // Subtitle - moved closer to the button
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              viewModel.subtitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
              ),
            ),
          ),

          SizedBox(
              height:
                  40), // Increased space between subtitle and button for balance

          // Button with navigation
          Padding(
            padding: EdgeInsets.only(bottom: 32),
            child: ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman DashboardView
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DashboardView()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
              ),
              child: Text(
                viewModel.buttonTitle,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

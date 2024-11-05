import 'package:flutter/material.dart';
import 'earnings_view.dart';

class DashboardView extends StatefulWidget {
  @override
  _DashboardViewState createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Navigasi berdasarkan tombol yang dipilih
    if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => EarningsView(),
        ),
      );
    }
    // Tambahkan navigasi untuk halaman lain di sini jika diperlukan
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),

              // Header
              Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(
                        'assets/profile.jpg'), // Ganti dengan gambar profil Anda
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Morning Jude,",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        "Free Account",
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.notifications, color: Colors.white),
                ],
              ),

              SizedBox(height: 20),

              // Card View
              Center(
                child: Container(
                  width: 320,
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
                        "2781 8191 6671 3190",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Jude Kyllan Jr.",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Exp 09/29",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20),

              // Buttons below the card with labels
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.add, color: Colors.pink),
                        onPressed: () {},
                      ),
                      Text("Add", style: TextStyle(color: Colors.white))
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.send, color: Colors.pink),
                        onPressed: () {},
                      ),
                      Text("Send", style: TextStyle(color: Colors.white))
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.payment, color: Colors.pink),
                        onPressed: () {},
                      ),
                      Text("Pay", style: TextStyle(color: Colors.white))
                    ],
                  ),
                ],
              ),

              SizedBox(height: 20),

              // Recent Transactions Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recent Transactions",
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                  Text("View All",
                      style: TextStyle(color: Colors.pink, fontSize: 14)),
                ],
              ),

              SizedBox(height: 10),

              // Transaction Avatars
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(5, (index) {
                  return CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(
                        'assets/avatar${index + 1}.jpg'), // Ganti dengan gambar avatar Anda
                  );
                }),
              ),

              SizedBox(height: 20),

              // Card Detail Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Card Detail",
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                  Text("Show",
                      style: TextStyle(color: Colors.pink, fontSize: 14)),
                ],
              ),

              SizedBox(height: 10),

              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Holder Name", style: TextStyle(color: Colors.grey)),
                    SizedBox(height: 5),
                    Text("Jude Kyllan Jr.",
                        style: TextStyle(color: Colors.white)),
                    SizedBox(height: 10),
                    Text("Card Number", style: TextStyle(color: Colors.grey)),
                    SizedBox(height: 5),
                    Text("2781 8191 6671 3190",
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),

              SizedBox(height: 50),

              // Bottom Navigation
              Container(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      icon: Icon(Icons.home,
                          color:
                              _selectedIndex == 0 ? Colors.pink : Colors.grey),
                      onPressed: () => _onItemTapped(0),
                    ),
                    IconButton(
                      icon: Icon(Icons.bar_chart,
                          color:
                              _selectedIndex == 1 ? Colors.pink : Colors.grey),
                      onPressed: () => _onItemTapped(1),
                    ),
                    IconButton(
                      icon: Icon(Icons.pie_chart,
                          color:
                              _selectedIndex == 2 ? Colors.pink : Colors.grey),
                      onPressed: () => _onItemTapped(2),
                    ),
                    IconButton(
                      icon: Icon(Icons.person,
                          color:
                              _selectedIndex == 3 ? Colors.pink : Colors.grey),
                      onPressed: () => _onItemTapped(3),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

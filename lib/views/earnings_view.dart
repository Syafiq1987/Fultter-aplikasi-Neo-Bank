import 'package:flutter/material.dart';
import 'dashboard_view.dart';

class EarningsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("My Velo Card", style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.pink),
            onPressed: () {},
          ),
        ],
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Personal Card",
              style: TextStyle(color: Colors.pink, fontSize: 16),
            ),
            SizedBox(height: 20),

            // Earnings Chart
            Center(
              child: Column(
                children: [
                  Text(
                    "\$ 7,008.14",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text("Total Earning", style: TextStyle(color: Colors.grey)),
                  SizedBox(height: 20),
                  Container(
                    height: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        for (int i = 0; i < 7; i++)
                          Container(
                            width: 20,
                            height: (i == 4) ? 100 : 60, // Sep bar lebih tinggi
                            decoration: BoxDecoration(
                              color: (i == 4)
                                  ? Colors.pinkAccent
                                  : Colors.grey[300],
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: Text("Earnings"),
                      ),
                      SizedBox(width: 16),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[300],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: Text("Spending"),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 30),

            // Card Transaction Section
            Text(
              "Card Transaction",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.monetization_on, color: Colors.pink),
              title: Text("Monthly Salary"),
              subtitle: Text("Income"),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "\$ 4,000.00",
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                  Text("01 Sep 24", style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_balance_wallet, color: Colors.pink),
              title: Text("Stock Dividends"),
              subtitle: Text("Investment Income"),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "\$ 150.00",
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                  Text("30 Aug 24", style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.home, color: Colors.grey),
                onPressed: () {
                  // Navigasi ke DashboardView
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DashboardView(),
                    ),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.bar_chart, color: Colors.grey),
                onPressed: () {
                  // Tambahkan navigasi ke halaman Chart jika ada
                },
              ),
              IconButton(
                icon: Icon(Icons.pie_chart, color: Colors.pink),
                onPressed: () {
                  // Tetap di halaman ini, tidak perlu navigasi tambahan
                },
              ),
              IconButton(
                icon: Icon(Icons.person, color: Colors.grey),
                onPressed: () {
                  // Tambahkan navigasi ke halaman Profil jika ada
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

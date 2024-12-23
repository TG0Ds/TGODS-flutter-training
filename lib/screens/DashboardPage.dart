import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.green[400],
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              top: screenHeight * 0.06,
              left: screenWidth * 0.05,
              right: screenWidth * 0.05,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.05,
                  vertical: screenHeight * 0.001,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Name field
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Search',
                        hintText: 'Cari Produk...',
                        prefixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.15,
              left: screenWidth * 0.05,
              right: screenWidth * 0.05,
              child: const Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Halo, John Doe!',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 4),
                      Text('Warehouse',
                          style: TextStyle(color: Colors.white, fontSize: 14)),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              top: screenHeight * 0.23, // Adjust as needed for positioning
              left: screenWidth * 0.05,
              right: screenWidth * 0.05,
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.094,
                    vertical: screenHeight * 0.02), // Adjust padding as needed
                decoration: BoxDecoration(
                  color:
                      Colors.black.withOpacity(0.6), // Semi-transparent black
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween, // Distribute items evenly
                  children: [
                    // First item
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.timer, color: Colors.yellow, size: 30),
                        SizedBox(height: 8),
                        Text('Menunggu',
                            style:
                                TextStyle(color: Colors.white, fontSize: 14)),
                        Text('1.65k',
                            style:
                                TextStyle(color: Colors.white, fontSize: 12)),
                      ],
                    ),
                    // Second item
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.local_shipping,
                            color: Colors.blue, size: 33),
                        SizedBox(height: 8),
                        Text('Dikirim',
                            style:
                                TextStyle(color: Colors.white, fontSize: 14)),
                        Text('2.3k',
                            style:
                                TextStyle(color: Colors.white, fontSize: 12)),
                      ],
                    ),
                    // Third item
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.check_circle, color: Colors.green, size: 30),
                        SizedBox(height: 8),
                        Text('Diterima',
                            style:
                                TextStyle(color: Colors.white, fontSize: 14)),
                        Text('20.5k',
                            style:
                                TextStyle(color: Colors.white, fontSize: 12)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
                height: screenHeight * 0.6, // 70% height for white card
                width: double.infinity,
                padding: EdgeInsets.only(
                    left: screenWidth * 0.05,
                    right: screenWidth * 0.05,
                    bottom: screenWidth * 0.05,
                    top: 50),
                margin: EdgeInsets.only(top: screenHeight * 0.4),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

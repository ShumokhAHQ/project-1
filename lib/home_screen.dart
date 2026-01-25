import 'package:flutter/material.dart';
import 'RiyadhScreen.dart';
import 'JeddahScreen.dart';
import 'QassimScreen.dart';
import 'SharqiyahScreen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // (Widget) كل عنصر في فلاتر هو عبارة عن
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // (MaterialApp) اول شي لازم اسويه وهي القاعدة للتطبيق
    return MaterialApp(
      // (Scaffold) هيكل التطبيق
      home: Scaffold(
         backgroundColor: Color.fromARGB(255, 212, 206, 200),

        // (AppBar) جزء الشاشة الي فوق
        appBar: AppBar(
          toolbarHeight: 120,
          title: Text(
            "حيّاك",
            style: TextStyle( color: Color.fromARGB(255, 222, 222, 214) , fontSize: 40),
          ),

          leading: Icon(Icons.person, color: const Color.fromARGB(255, 243, 240, 240), size: 40),

          backgroundColor:  Color.fromARGB(255, 112, 108, 104),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
          ),

          centerTitle: true, //الكلام يصير بالنص
        ),

        // (ListView) يحرك الشاشة لفوق و لتحت
        body: ListView(
          padding: EdgeInsets.all(90),
          children: [
            //------------------------------------------- الرياض ------------------------------------
            Container(
              width: 200,
              height: 120,

              decoration: BoxDecoration(
                color: Color.fromARGB(255, 176, 173, 170),
                borderRadius: BorderRadius.circular(20), //تدوير الزوايا
                border: Border.all(
                  color: Color.fromARGB(255, 158, 152, 145),
                  width: 5,
                ),
              ),

              child: Row(
                children: [
                  //عشان تصير الصورة دائرية
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      'asset/Riyadh.png',
                      width: screenWidth * 0.25,
                      height: screenHeight * 0.15,
                      fit: BoxFit.cover,
                    ),
                  ),

                  SizedBox(width: 20),

                  Center(child: Text("الرياض")),

                  Spacer(),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RiyadhScreen()),
                      );
                    },
                    child: Text("view"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 70), //مسافة بين العناصر
            //-------------------------------------------جدة-----------------------------------
            Container(
              width: 200,
              height: 120,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 176, 173, 170),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Color.fromARGB(255, 158, 152, 145),
                  width: 5,
                ),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      'asset/Jeddah.png',
                      width: screenWidth * 0.25,
                      height: screenHeight * 0.15,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 20),
                  Center(child: Text("جدة")),
                  Spacer(),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => JeddahScreen()),
                      );
                    },
                    child: Text("view"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 70),
            //------------------------------------------- القصيم ------------------------------------
            Container(
              width: 200,
              height: 120,
              decoration: BoxDecoration(
                color:  Color.fromARGB(255, 176, 173, 170),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Color.fromARGB(255, 158, 152, 145),
                  width: 5,
                ),
              ),

              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      'asset/Qassim_2.png',
                      width: screenWidth * 0.25,
                      height: screenHeight * 0.15,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 20),
                  Center(child: Text("القصيم")),

                  Spacer(),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => QassimScreen()),
                      );
                    },
                    child: Text("view"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 70),
            //------------------------------------------- الشرقية ------------------------------------
            Container(
              width: 200,
              height: 120,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 176, 173, 170),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Color.fromARGB(255, 158, 152, 145),
                  width: 5,
                ),
              ),

              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      'asset/Sharqiyah.png',
                      width: screenWidth * 0.25,
                      height: screenHeight * 0.15,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 20),
                  Center(child: Text("الشرقية")),
                  Spacer(),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SharqiyahScreen(),
                        ),
                      );
                    },
                    child: Text("view"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 70),
          ],
        ),
      ),
    );
  }
}

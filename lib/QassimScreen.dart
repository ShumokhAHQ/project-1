import 'package:flutter/material.dart';

class QassimScreen extends StatelessWidget {
  const QassimScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 212, 206, 200),
      appBar: AppBar(
        title: Text(" حيّاك بالقصيم "),
        backgroundColor: Color.fromARGB(255, 112, 108, 104),
        centerTitle: true,
      ),

      body: Padding(
        padding: EdgeInsets.all(55),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            // ------------------ عسيب  ------------------
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 176, 173, 170),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'asset/aseeb.png',
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "  عسيب",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            // ------------------ ريڤا  ------------------
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 176, 173, 170),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'asset/Qassim.png',
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    " ريڤا",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

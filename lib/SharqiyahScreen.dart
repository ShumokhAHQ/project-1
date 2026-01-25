import 'package:flutter/material.dart';

class SharqiyahScreen extends StatelessWidget {
  const SharqiyahScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 212, 206, 200),
      appBar: AppBar(
        title: Text(" حيّاك بالشرقية "),
        backgroundColor: Color.fromARGB(255, 112, 108, 104),
        centerTitle: true,
      ),

      body: Padding(
        padding: EdgeInsets.all(55),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            // ------------------ شاطئ نصف القمر ------------------
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
                      'asset/moon_2.png',
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    " شاطئ نصف القمر ",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            // ------------------ مركز إثراء ------------------
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
                      'asset/ethraa.png',
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    " إثراء",
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

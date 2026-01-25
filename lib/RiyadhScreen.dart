import 'package:flutter/material.dart';

class RiyadhScreen extends StatelessWidget {
  const RiyadhScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Color.fromARGB(255, 212, 206, 200),
      appBar: AppBar(
        title: Text(" حيّاك بالرياض "),
       backgroundColor: Color.fromARGB(255, 112, 108, 104),
        centerTitle: true,
      ),

      body: Padding(
        padding:.all(55),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

//---------------------------- six flags --------------------
            Container(
              width:200,
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
                      'asset/six flags.png',
                      width: 150,
                      height: 150,
                     fit: BoxFit.cover,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    " six flags ",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

//-------------------------------- Boulevard -------------------------
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
                      'asset/worlds_2.png',
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    " Boulevard World",
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

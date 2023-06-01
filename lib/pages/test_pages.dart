import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height /1.6,
              decoration: const BoxDecoration(
                color: Color(0xFF674AEF),
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(70) )
              ),
              child: Image.asset("images/books.png",scale: 1.7,),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height /2.666,
                color: Color(0xFF674AEF),
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.only(
                  top: 40,
                  bottom: 30
                ),
                height: MediaQuery.of(context).size.height /2.666,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(70))
                ),
                child: Column(
                  children: [
                    const Text("Learngin is Everything",style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                    ),),
                    const SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 60
                      ),
                      child: const Text("Learning with Pleasure with Dear programmer , whenever your are",style: TextStyle(
                        fontWeight: FontWeight.w500,

                      ),),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 80,
                        vertical: 15
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFF674AEF),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: const Text("Get Start"),
                    )
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}

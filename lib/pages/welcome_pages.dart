import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.6,
                  
                  decoration: const BoxDecoration(
                    color: Color(0xFF674AEF),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(70)
                    )
                  ),
                  child: Center(
                    child: Image.asset("images/books.png",
                    scale: 0.8,),
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2.666,

                decoration: const BoxDecoration(
                  color: Color(0xFF674AEF),
                  // color: Colors.red
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: const EdgeInsets.only(
                  top: 40,
                  bottom: 30
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2.666,

                decoration: const BoxDecoration(
                  color: Colors.white,
                  
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70)
                  )
                ),
                child: Column(
                  children: [
                    const Text("Learing is Everything.",style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      wordSpacing: 2
                    ),),
                    SizedBox(height: 15,),
                    Padding(padding: const EdgeInsets.symmetric(
                      horizontal: 60
                    ),
                    child: Text("Learning with Pleasure with Dear Programmer, Wherever your are.",style: TextStyle(
                      fontSize: 17,
                      color: Colors.black.withOpacity(0.6)
                    ),),),
                    SizedBox(height: 50,),
                    Material(
                      color: const Color(0xFF674AEF),
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: (){},
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 80,
                            vertical: 15
                          ),
                          decoration: const BoxDecoration(

                          ),
                          child: const Text("Get Start",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold
                          ),),
                        ),
                      ),
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

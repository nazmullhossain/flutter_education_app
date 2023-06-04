import 'package:flutter/material.dart';

import 'course_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List imageList=[
      "books",
      "C#",
      "Flutter",
      "Python",
      "React Native"
    ];



    List catNames = [
      "Category",
      "Classes",
      "BookStore",
      "Free Course",
      "Live Course",
      "LeaderBoard"
    ];
    List<Color> catColors = [
      Color(0xFFFFCF2F),
      Color(0xFF6FE08D),
      Color(0xFF61BDFD),
      Color(0xFFCB84FB),
      Color(0xFF78E667),
      Color(0xFFFC7C7F),
    ];
    List<Icon> catIcons = [
      Icon(
        Icons.category,
        color: Colors.white,
        size: 30,
      ),
      Icon(
        Icons.video_library,
        color: Colors.white,
        size: 30,
      ),
      Icon(
        Icons.assessment,
        color: Colors.white,
        size: 30,
      ),
      Icon(
        Icons.store,
        color: Colors.white,
        size: 30,
      ),
      Icon(
        Icons.play_circle,
        color: Colors.white,
        size: 30,
      ),
      Icon(
        Icons.emoji_events,
        color: Colors.white,
        size: 30,
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
              decoration: BoxDecoration(
                  color: Color(0xFF674AEF),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.dashboard,
                        size: 30,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.notifications,
                        size: 30,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30, bottom: 15),
                    child: Text(
                      "Hi Programmer",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                          wordSpacing: 2),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 55,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(top: 5, bottom: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search here...",
                          hintStyle:
                              TextStyle(color: Colors.black.withOpacity(0.5)),
                          prefixIcon: Icon(
                            Icons.saved_search,
                            size: 25,
                          )),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Column(
                children: [
                  GridView.builder(
                      itemCount: catNames.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3, childAspectRatio: 1.2),
                      itemBuilder: (contex, index) {
                        return Column(
                          children: [
                            Container(
                              height: 60,
                                width: 60,
                              decoration: BoxDecoration(
                                color: catColors[index],
                                shape: BoxShape.circle
                              ),
                              child: Center(
                                child: catIcons[index],
                              ),
                            ),
                            SizedBox(height:  10,),
                            Text(catNames[index],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(0.7)
                            ),),
                          ],
                        );
                      }),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [

                    Text("Coures",style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w600
                    ),),

                      Text("See All",style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500
                      ),)
                    ],
                  ),
                  SizedBox(height: 10,),
                  GridView.builder(
                    itemCount: imageList.length,
                    shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: (MediaQuery.of(context).size.height-50-25)/(4*240)
                      
                      ),
                      itemBuilder: (contex,index){
                        return InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>CoursePage(imag: imageList[index],)));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 20,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xFFF5F3FF),
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.all(10),
                                  child: Image.asset("images/${imageList[index]}.png",
                                  width: 100,
                                      height: 100,
                                  scale: 1,),
                                
                                
                                ),
                                SizedBox(height: 10,),
                                Text(imageList[index],
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black.withOpacity(0.6)
                                ),),
                                SizedBox(height: 10,),
                                Text("55 Videos",style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black.withOpacity(0.5)
                                ),)
                              ],
                            ),
                          ),
                        );
                      })

                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        iconSize: 32,
        selectedItemColor: Color(0xFF674AEF),

        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.assessment),label: "Course"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Wishlist"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Account"),
        ],
      ),
    );
  }
}

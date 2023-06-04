import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VideoSectionWidget extends StatelessWidget {
  const VideoSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List videoList=[
      "Introduction to Flutter",
      "Installing Flutter on Widows",
      "Setup Emulator on windows",
      "Crating our first app"
    ];
    return ListView.builder(
      shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: videoList.length,
        itemBuilder: (contex,index){
return ListTile(
  leading: Container(
    padding: EdgeInsets.all(5),
    decoration: BoxDecoration(
      color: index==0? Color(0xFF674AEF):Color(0xFF674AEF).withOpacity(0.6),
      shape: BoxShape.circle,

    ),
    child: Icon(Icons.play_arrow_rounded,
    color: Colors.white,size: 30,),
  ),
  title: Text(videoList[index]),
  subtitle: Text("20 min 50 sec"),
);
    });
  }
}

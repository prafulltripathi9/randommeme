import 'package:flutter/material.dart';
import 'package:randommeme/controller/fetchMeme.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});
  
  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  String imgUrl = "";

  void UpdateImage()async{
    String getImgUrl = await Fetchmeme.fetchNewMeme();
    setState(() {
      imgUrl = getImgUrl;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 150,),
          Text("Meme #21", style: TextStyle(fontSize: 25 , fontWeight: FontWeight.w600),),
          SizedBox(height: 10),
          Text("Target 500 memes", style: TextStyle(fontSize: 18),),
          SizedBox(height: 30,),
          Image.network(imgUrl),
          SizedBox(height: 30),
          ElevatedButton(onPressed: (){
            UpdateImage();
          }, child: Container(height: 50, width: 150, child: Center(child: Text("For Meme", style: TextStyle(fontSize: 20),)))),
          Spacer(),
          Text("App Created by Prafull Tripathi", style: TextStyle(fontSize: 20),),
          Text("Code With Prafull", style: TextStyle(fontSize: 18),),
          SizedBox(height: 45,),
      ]
      ),
    );
  }
}
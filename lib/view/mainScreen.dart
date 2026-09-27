import 'package:flutter/material.dart';
import 'package:randommeme/controller/fetchMeme.dart';

class Mainscreen extends StatelessWidget {
  const Mainscreen({super.key});

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
          Image.network("https://imgs.search.brave.com/4xX1lP_rr4jCtWwOM6CJitDR-pu6-2aAkDOEUr_rajQ/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9zdGF0/aWMuYm9yZWRwYW5k/YS5jb20vYmxvZy93/cC1jb250ZW50L3Vw/bG9hZHMvMjAyNi8w/Ni82YTFkNmRlYWFh/MDQxX2Z1bm55LW1l/bWVzLWFscGhhYmV0/c291cF9fNzAwLmpw/Zw"),
          SizedBox(height: 30),
          ElevatedButton(onPressed: (){
            Fetchmeme().fetchNewMeme();
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
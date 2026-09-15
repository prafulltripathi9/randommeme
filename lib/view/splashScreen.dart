import 'package:flutter/material.dart';


class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.network("https://imgs.search.brave.com/4xX1lP_rr4jCtWwOM6CJitDR-pu6-2aAkDOEUr_rajQ/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9zdGF0/aWMuYm9yZWRwYW5k/YS5jb20vYmxvZy93/cC1jb250ZW50L3Vw/bG9hZHMvMjAyNi8w/Ni82YTFkNmRlYWFh/MDQxX2Z1bm55LW1l/bWVzLWFscGhhYmV0/c291cF9fNzAwLmpw/Zw"),
          SizedBox(height: 20,),
          Text("Random-meme", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
        ],    
      ),
    );
  }
}
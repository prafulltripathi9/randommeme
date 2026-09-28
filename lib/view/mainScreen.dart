import 'package:flutter/material.dart';
import 'package:randommeme/controller/fetchMeme.dart';
import 'package:randommeme/controller/saveMyData.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  String imgUrl = "";
  int? memeNo;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    getInitMemeNo();
    updateImage();
  }

  Future<void> getInitMemeNo() async {
    memeNo = await SaveMyData.fetchData() ?? 1;
    setState(() {});
  }

  Future<void> updateImage() async {
    setState(() {
      isLoading = true;
    });

    try {
      String getImgUrl = await Fetchmeme.fetchNewMeme();

      setState(() {
        imgUrl = getImgUrl;
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Failed to load meme"),
        ),
      );
    }
  }

  Future<void> nextMeme() async {
    memeNo = (memeNo ?? 1) + 1;

    await SaveMyData.saveData(memeNo!);

    setState(() {});

    await updateImage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),

            Text(
              "Meme #${memeNo ?? 1}",
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Target 500 memes",
              style: TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: isLoading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Image.network(
                        imgUrl,
                        width: double.infinity,
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) {
                          return const Center(
                            child: Text(
                              "Failed to load image",
                              style: TextStyle(fontSize: 18),
                            ),
                          );
                        },
                      ),
                    ),
            ),

            const SizedBox(height: 15),

            ElevatedButton(
              onPressed: isLoading ? null : nextMeme,
              child: SizedBox(
                height: 50,
                width: 150,
                child: Center(
                  child: Text(
                    isLoading ? "Loading..." : "Next Meme",
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "App Created by Prafull Tripathi",
              style: TextStyle(fontSize: 18),
            ),

            const Text(
              "Code With Prafull",
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
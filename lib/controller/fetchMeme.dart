import 'dart:convert';

import 'package:http/http.dart';

class Fetchmeme
{
  fetchNewMeme() async {
    Response response = await get(Uri.parse("https://meme-api.com/gimme"));

    print(response.body);
    Map body_data = jsonDecode(response.body);
    print(body_data["url"]);
  }
} 
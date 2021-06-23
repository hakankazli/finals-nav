import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sinav_app/MODELS/sinav_model.dart';

Future<List<Welcome>> fetchData() async {
  final response =
  await http.get(Uri.parse('https://gist.githubusercontent.com/hakankazli/70dd60ce8062f82ca05003d4889c87c1/raw/55f2bb8ddb6779635e2b426ee50a13add3f14f47/gistfile1.txt'));
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => new Welcome.fromJson(data)).toList();
  } else {
    throw Exception('Unexpected error occured!');
  }
}  
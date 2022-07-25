import 'dart:convert';

import 'package:http/http.dart' as http;
import 'dart:io';

void main() async {
  jsontoFile(await getList());
  
}

getList() async {
    var client = http.Client();
    List<Map> listJsons = [];
    try{
      for (int i = 52767; i <= 53050; i++){
        var value = await client.get(
          Uri.parse('https://www.themealdb.com/api/json/v1/1/lookup.php?i=$i'));
        if (jsonDecode(value.body)['meals'] != null){
          var decodedResponse = jsonDecode(value.body)['meals'][0] as Map;
          listJsons.add(decodedResponse);
        }
      }
    }finally{
      client.close();
    }
    return jsonEncode(listJsons);
  }

jsontoFile(json){
  var file = File('C:/Users/Mazur/Documents/git/flutterProjects/test1/assets/data.json');
  var sink = file.openWrite();
  sink.write(json);
  sink.close();
}
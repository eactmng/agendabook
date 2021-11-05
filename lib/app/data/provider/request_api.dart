import 'package:http/http.dart' as http;

class RequestApi {
  final String url;
  final dynamic body;

  RequestApi({required this.url, this.body});

  Future<http.Response> post() async{
    return await http.post(Uri.parse(url), body: body).timeout(Duration(minutes: 2));
  }

  Future<http.Response> get() async {
    return await http.get(Uri.parse(url)).timeout(Duration(minutes: 2));
  }
}
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserProfilePage extends StatefulWidget {
  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  String username = 'Kullanıcı Adı'; // Kullanıcının varsayılan adı
  String _newUsername = ''; // Kullanıcının girdiği yeni ad

  @override
  void initState() {
    super.initState();
    _fetchUsername(); // Kullanıcı adını API'den çekme işlemi
  }

  final dio = Dio();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: _changeUsername,
              child: Text('Kullanıcı Adını Değiştir'),
            ),
            SizedBox(height: 16.0),
            TextField(
              onChanged: (value) {
                setState(() {
                  _newUsername =
                      value; // Kullanıcının girdiği yeni adı güncelleme
                });
              },
              decoration: InputDecoration(
                labelText: 'Yeni Kullanıcı Adı',
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Kullanıcı Adı: $username',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }

  Future<String?> getUserToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('token').toString();
  }

  Future<String?> getUserId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('id').toString();
  }

  void _fetchUsername() async {
    try {
      var token = await getUserToken();
      var id = await getUserId();
      // Kullanıcı adını API'den çekme işlemi
      dio.options.headers['Authorization'] = 'Token $token';
      var response =
          await dio.get('http://192.168.56.1:8000/api/account/login/$id');

      setState(() {
        username = response
            .data['username']; // API'den gelen kullanıcı adını güncelleme
      });
    } catch (error) {
      print('Kullanıcı adını çekerken bir hata oluştu: $error');
    }
  }

  void _changeUsername() async {
    try {
      var token = await getUserToken();
      var id = await getUserId();
      // Kullanıcı adını API'den çekme işlemi
      dio.options.headers['Authorization'] = 'Token $token';
      Response response = await dio.put(
        'http://192.168.56.1:8000/api/account/login/$id',
        data: {
          'username': _newUsername
        }, // Kullanıcının girdiği yeni adı API'ye gönderme
      );
      setState(() {
        username = response.data[
            'username']; // API'den gelen güncellenmiş kullanıcı adını güncelleme
      });
    } catch (error) {
      print('Kullanıcı adını güncellerken bir hata oluştu: $error');
    }
  }
}

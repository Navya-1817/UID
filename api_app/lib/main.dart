import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApiApp());
}

class MyApiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ApiHome(),
    );
  }
}

class ApiHome extends StatefulWidget {
  @override
  _ApiHomeState createState() => _ApiHomeState();
}

class _ApiHomeState extends State<ApiHome> {
  List data = [];
  bool loading = true;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
      var response = await http.get(url);

      if (response.statusCode == 200) {
        setState(() {
          data = json.decode(response.body);
          loading = false;
        });
      } else {
        throw Exception("API Failed");
      }
    } catch (e) {
      setState(() {
        loading = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error loading data")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Experiment-9 — Fetch API Data")),
      body: loading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, i) {
                return ListTile(
                  title: Text(data[i]["title"]),
                  subtitle: Text(data[i]["body"]),
                  leading: CircleAvatar(child: Text("${data[i]["id"]}")),
                );
              },
            ),
    );
  }
}

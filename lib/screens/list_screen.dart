import 'package:flutter/material.dart';
import 'package:flutter_mcu_api/flutter_mcu_api.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  final List characters = [];
  late McuApi _mcuApi;

  final String publicApiKey =
      const String.fromEnvironment('f05b42c508a57ae2ab6404b0abb1ada2');
  final String privateApiKey =
      const String.fromEnvironment('a5b5fbbdf25f5906537696a317f3d2d4096c4db9');

  Future<void> getCharacter() async {
    final String _apiUrl = '';
  }

  @override
  void initState() {
    super.initState();
    _mcuApi = McuApi(
      publicApiKey: publicApiKey,
      privateApiKey: privateApiKey,
    );
    getCharacter();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Marvel Characters List'),
      ),
      body: SafeArea(
          child: characters.isEmpty
              ? Center(
                  child: Container(
                    width: 50,
                    height: 50,
                    child: const CircularProgressIndicator(
                      color: Colors.white70,
                    ),
                  ),
                )
              : ListView.builder(
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        title: Text(characters[index],
                            style: const TextStyle(fontSize: 30)),
                      ),
                    );
                  },
                  itemCount: characters.length,
                )),
    );
  }
}

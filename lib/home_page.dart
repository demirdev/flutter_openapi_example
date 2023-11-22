import 'package:dio/dio.dart';
import 'package:dio/src/response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_openapi_example/api_service.dart';
import 'package:openapi/src/model/pet.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<Pet>? petFuture;

  @override
  void initState() {
    petFuture = getAPet();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FutureBuilder(
              future: petFuture,
              builder: (BuildContext context, AsyncSnapshot<Pet> snapshot) {
                if (snapshot.hasData) {
                  return Text('${snapshot.data?.name}');
                } else if (snapshot.hasError) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('${snapshot.error}',
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.error)),
                      IconButton(
                          icon: Icon(Icons.refresh),
                          onPressed: () => getAPet()),
                    ],
                  );
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),
          ),
        ),
      ),
    );
  }

  Future<Pet>? getAPet() async {
    try {
      final pet = await ApiService.instance.petApi.getPetById(petId: 1);
      if (pet.data != null) {
        return Future.value(pet.data);
      }
      return Future.error('pet not found, result is null');
    } catch (e) {
      if (e is DioException) {
        print(e.stackTrace);
        return Future.error(e.response?.data?['message'] ?? e.toString());
      }
      return Future.error(e);
    }
  }
}

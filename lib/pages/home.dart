import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          searchBar()
        ],
      )
    );
  }

  Container searchBar() {
    return Container(
          margin: const EdgeInsets.only(top: 180, left: 28, right: 20),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.11),
                blurRadius: 10,
                spreadRadius: 0.0
              )
            ]
          ),
          child:  TextField(
            decoration:  InputDecoration(
              filled: true,
              fillColor: Colors.white,
              contentPadding: const EdgeInsets.all(15),
              prefixIcon: const Icon(Icons.search),
              hintText: 'login',
              hintStyle: const TextStyle(
                color:  Color(0xffDDDADA),
                fontSize: 14
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none
              )
            ),
          ),
        );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      title: const Text(
        'SWIFTY COMPANION',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold
          ),
        ),
      centerTitle: true,
      elevation: 0.0,
    );
  }
}
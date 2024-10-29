import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:swifty_companion/models/user_model.dart';
import 'package:swifty_companion/pages/profile.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:swifty_companion/utils/user_repository.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/bkgrnd.jpg')),
            ),
          ),
          Positioned(
            top: 220,
            left: 0,
            right: 0,
            child: Center(
              child: SvgPicture.asset('assets/42_logo.svg', width: 120, height: 120,)
            )
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              appBar(),
            searchBar(context)
            ],
          ),
        ],
      )
    );
  }

  Container searchBar(BuildContext context) {
    return Container(
          margin: const EdgeInsets.only(top: 0, left: 20, right: 20),
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
            style: const TextStyle(
              color: Color.fromARGB(255, 197, 197, 197)
            ),
            decoration:  InputDecoration(
              filled: true,
              fillColor: Colors.black.withOpacity(0.3),
              contentPadding: const EdgeInsets.all(15),
              prefixIcon: const Icon(Icons.search),
              hintText: 'login',
              hintStyle: const TextStyle(
                color:  Colors.grey,
                fontSize: 14
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(
                  color: Colors.blue,
                  width: 15
                )
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Colors.white, width: 1), // Bordure lorsqu'il est sélectionné
              ),
            ),
            onSubmitted: (value) async {
                UserModel? user;
                UserRepository repo = UserRepository();
                if (value.isNotEmpty){
                  user = await repo.fetchUser(value);
                  if (user == null){
                    Fluttertoast.showToast(
                      msg: 'This user does not exist.',
                      // backgroundColor: Colors.red,
                      // textColor: Colors.white
                    );
                    return;
                  }
                  Navigator.push(
                    // ignore: use_build_context_synchronously
                    context,
                    MaterialPageRoute(builder: (context) => Profile(userReceived: user,)),
                  );
                }
            },
          ),
        );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: const Text(
        'Search a student',
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold
          ),
        ),
      centerTitle: true,
      elevation: 0.0,
    );
  }
}
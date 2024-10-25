import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:swifty_companion/models/user_model.dart';

Widget achievementsList(UserModel? user){
  return ListView.builder(
    itemCount: user!.achievements.length, 
    itemBuilder: (context, index) {
      final achievements = user.achievements[index];
      return Container(
        margin: const EdgeInsets.fromLTRB(7, 2, 7, 2),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(5)
        ),
        child: ListTile(
          title: Text(achievements.name), 
          subtitle: Text(achievements.description),
          trailing: SvgPicture.network(
            "https://cdn.intra.42.fr/${achievements.image.replaceFirst('/uploads/', "")}",
            semanticsLabel: achievements.name,
            placeholderBuilder: (BuildContext context) =>
                const CircularProgressIndicator(
              color: Colors.blue,
            ),
          ),
        ),
      );
    },
  );
 }
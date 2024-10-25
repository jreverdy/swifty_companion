import 'package:flutter/material.dart';
import 'package:swifty_companion/models/skill_model.dart';
import 'package:swifty_companion/models/user_model.dart';

 Widget skillsList(UserModel? user){
  List <SkillModel> filteredSkills = [];
  if (user!.cursusUsers.length > 1){
    filteredSkills = user.cursusUsers[1].skills;
  }
  else{
    filteredSkills = user.cursusUsers[0].skills;
  }
  return ListView.builder(
    itemCount: filteredSkills.length,
    itemBuilder: (context, index) {
      final skill = filteredSkills[index];
      return Container(
        margin: const EdgeInsets.fromLTRB(5, 5, 5, 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                skill.name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  LinearProgressIndicator(
                    minHeight: 45,
                    value: (skill.level / 21),
                    backgroundColor: Colors.grey[400],
                    valueColor: const AlwaysStoppedAnimation<Color>(Color.fromARGB(255, 17, 158, 92)),
                  ),
                  Text(
                    '${skill.level}%',
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                  )
                ],
              ),
              const SizedBox(height: 5)
            ]
        ),
      );
  });
 }
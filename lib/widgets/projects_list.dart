import 'package:flutter/material.dart';
import 'package:swifty_companion/models/project_user_model.dart';
import 'package:swifty_companion/models/user_model.dart';

Widget projectsList(UserModel? user) {
  var filteredProjects = [];
  if (user!.cursusUsers.length > 1){
      filteredProjects = user.projectsUsers.where((projectUser) {
      return !projectUser.project.slug.startsWith("c-piscine");
    }).toList();
  }
  else{
      filteredProjects = user.projectsUsers.where((projectUser) {
      return projectUser.project.slug.startsWith("c-piscine");
    }).toList();
  }
  return ListView.builder(
    itemCount: filteredProjects.length, 
    itemBuilder: (context, index) {
      ProjectUserModel projectUser = filteredProjects[index];
      return Container(
        margin: const EdgeInsets.fromLTRB(7, 2, 7, 2),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(5)
        ),
        child: ListTile(
          title: Text(projectUser.project.name), 
          subtitle: Text(projectUser.status), 
          trailing: projectUser.isValidated == true
              ? Text(
                  '${projectUser.finalMark}',
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 17, 158, 92)
                  ),
                )
              : const Icon(Icons.close, color: Colors.red),
        ),
      );
    },
  );
  }
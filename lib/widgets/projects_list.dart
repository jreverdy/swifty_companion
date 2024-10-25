import 'package:flutter/material.dart';
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
      final projectUser = filteredProjects[index];
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
              ? const Icon(Icons.check, color: Colors.green) 
              : const Icon(Icons.close, color: Colors.red),
        ),
      );
    },
  );
  }
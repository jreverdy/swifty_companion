import 'package:flutter/material.dart';
import 'package:swifty_companion/auth_service.dart';
import 'package:swifty_companion/models/user_model.dart';
import 'package:swifty_companion/user_repository.dart';

class Profile extends StatefulWidget {
  final String data;
  const Profile({super.key, required this.data});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  UserModel? user;

  @override
  void initState() {
    super.initState();
    fetchUserData();
  }

  Future<void> fetchUserData() async {
    try{
      UserModel? fetchedUser = await UserRepository().fetchUser(widget.data);
      for (var x in fetchedUser!.projectsUsers){
        logger.i(x.project.slug);
      }
      setState(() {
        user = fetchedUser;
        
      });
    } catch(e){
      logger.e('Error fetching user data: $e');
    }
  }
  
  @override
  Widget build(BuildContext context) {
    if (user == null){
      return Container();
    }
    return Scaffold(
      body: Column(
        children: [
          customAppBar(),
          Expanded(child: projectList())
        ],
      ),
    );
  }

 Widget projectList() {
  final filteredProjects = user!.projectsUsers.where((projectUser) {
    return !projectUser.project.slug.startsWith("c-piscine");
  }).toList();
  return ListView.builder(
    itemCount: filteredProjects.length, // Assurez-vous que vous utilisez la bonne longueur ici
    itemBuilder: (context, index) {
      final projectUser = filteredProjects[index]; // On récupère chaque élément de la liste
      
      return ListTile(
        title: Text(projectUser.project.name), // Utilisation de projectUser pour accéder à project
        subtitle: Text(projectUser.status), // Exemple d'ajout d'un sous-titre
        trailing: projectUser.isValidated == true
            ? const Icon(Icons.check, color: Colors.green) // Affiche une icône si validé
            : const Icon(Icons.close, color: Colors.red), // Affiche une autre icône si non validé
      );
    },
  );
}



  Widget customAppBar() {
      return Container(
        height: 550,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage(user!.image.link),
            ),
            const SizedBox(height: 8),
            Text(
              user!.displayname,
              style: const TextStyle(
                fontSize: 22,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 3),
            Text(
              user!.login,
              style: const TextStyle(
                fontSize: 15,
                color: Colors.white
              ),
            ),
            const SizedBox(height: 20),
            userDetails(),
            const SizedBox(height: 20),
            percentBar()
          ],            
        ),
      );
  }

  Stack percentBar() {
    return Stack(
            alignment: Alignment.center,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                width: double.infinity,
                height: 30,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: LinearProgressIndicator(
                    minHeight: 30,
                    value: user!.cursusUsers[1].level % 1, 
                    backgroundColor: Colors.grey[300],
                    valueColor: const AlwaysStoppedAnimation<Color>(Color.fromARGB(255, 17, 158, 92)),
                  ),                  
                ),
              ),
              Text(
                '${user!.cursusUsers[1].level}%',
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              )
            ],
          );
  }

  Container userDetails() {
    return Container(
            height: 120,
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
            decoration: BoxDecoration(
              color: Colors.grey[850],
              borderRadius: BorderRadius.circular(10)
            ),
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Opacity(
                      opacity: 0.4,
                      child: Text(
                        'email ',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Opacity(
                      opacity: 0.8,
                      child: Text(
                        user!.email,
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.white
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Opacity(
                      opacity: 0.4,
                      child: Text(
                        'wallet ',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Opacity(
                      opacity: 0.8,
                      child: Text(
                        '${user!.wallet} ₳',
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.white
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Opacity(
                      opacity: 0.4,
                      child: Text(
                        'Evalution points ',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Opacity(
                      opacity: 0.8,
                      child: Text(
                        '${user!.correctionPoint}',
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.white
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Opacity(
                      opacity: 0.4,
                      child: Text(
                        'grade ',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Opacity(
                      opacity: 0.8,
                      child: Text(
                        '${user!.cursusUsers[1].grade}',
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.white
                        ),
                      ),
                    ),

                  ],
                ),
              ],
            ),
          );
  }
  
  
}
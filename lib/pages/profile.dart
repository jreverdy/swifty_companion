import 'package:flutter/material.dart';
import 'package:swifty_companion/models/user_model.dart';
import 'package:swifty_companion/widgets/achievements_list.dart';
import 'package:swifty_companion/widgets/projects_list.dart';
import 'package:swifty_companion/widgets/skills_list.dart';

class Profile extends StatefulWidget {
  final UserModel? userReceived;
  const Profile({super.key, required this.userReceived});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  UserModel? user;
  final List<bool> _buttonStates = [true, false, false];
  int _selectedList = 0;

  @override
  void initState() {
    super.initState();
    user = widget.userReceived;
  }

  void toggleButtonColor(int index){
      setState(() {
        _buttonStates[index] = !_buttonStates[index];
        for (var i = 0; i < _buttonStates.length; i++){
          if (i != index && _buttonStates[i] == true){
            _buttonStates[i] = !_buttonStates[i];
          }
        }
        _selectedList = index;
      });
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
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            _listButton('Projects', 0),
            _listButton('Achievements', 1),
            _listButton('Skills', 2),
            ],
          ),
          Expanded(child: _listView())
        ],
      ),
    );
  }

  Widget _listButton(String label, int index){
    return OutlinedButton(
              style:  OutlinedButton.styleFrom(
                backgroundColor: _buttonStates[index] ? const Color.fromARGB(255, 17, 158, 92) : Colors.transparent, 
                foregroundColor: _buttonStates[index] ? Colors.white : Colors.black, 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
                side: BorderSide(color: _buttonStates[index] ? const Color.fromARGB(255, 17, 158, 92) : Colors.black),
              ),
              onPressed: () {
                toggleButtonColor(index);
              },
              child: Text(label),
    );
  }

 Widget _listView(){
    switch(_selectedList){
      case 0:
        return projectsList(user);
      case 1:
        return achievementsList(user);
      case 2:
        return skillsList(user);
      default:
        return projectsList(user);
    }
 } 

  Widget customAppBar() {
      return Container(
        height: 550,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(image: 
            AssetImage('assets/matrix.jpg'),
            fit: BoxFit.cover
            ),
        ),        
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              userImage(),
              const SizedBox(height: 20),
              userDetails(),
              const SizedBox(height: 20),
              percentBar()
            ],
        ),
      );
  }

  Column userImage() {
    return Column(
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
        ],            
      );
  }

  Stack percentBar() {
    var levelPercentage = 0.0;
    if (user!.cursusUsers.length > 1){
      levelPercentage = user!.cursusUsers[1].level;
    }
    else{
      levelPercentage = user!.cursusUsers[0].level;
    }
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
                    value: levelPercentage % 1, 
                    backgroundColor: Colors.grey[400],
                    valueColor: const AlwaysStoppedAnimation<Color>(Color.fromARGB(255, 17, 158, 92)),
                  ),                  
                ),
              ),
              Text(
                '$levelPercentage%',
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
    String? grade = '';
    if (user!.cursusUsers.length > 1){
        grade = user!.cursusUsers[1].grade;
    }
    else{
        grade = 'Novice';
    }
    return Container(
            height: 120,
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
            decoration: BoxDecoration(
              color: Colors.grey[850]!.withOpacity(0.9),
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
                        '$grade',
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
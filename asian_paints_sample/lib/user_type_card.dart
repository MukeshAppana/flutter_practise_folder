import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserTypes {
  final String type;
  final String img;

  UserTypes(this.type, this.img);

  static List<UserTypes> getUser() {
    List<UserTypes> users = <UserTypes>[];
    users.add(UserTypes("Internal User", "assets/images/Internal_user.svg"));
    users.add(UserTypes("External User", "assets/images/external_user.svg"));
    return users;
  }
}

class UserTypeCard extends StatelessWidget {
  const UserTypeCard({Key? key, required this.user}) : super(key: key);
  final UserTypes user;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          color: const Color(0xffDADADA),
          elevation: 20,
          shadowColor: Colors.white,
          child: SizedBox(
              width: 170,
              height: 180,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Radio(
                            value: user,
                            groupValue: UserTypes,
                            hoverColor: const Color(0xff36403A),
                            onChanged: (onChanged) {
                              // print("radio button pressed");
                            })
                      ],
                    ),
                    Center(
                      child: SvgPicture.asset(
                        user.img,
                        height: 80,
                        width: 80,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 4, 0, 8),
                      child: Text(
                        user.type,
                        style: const TextStyle(
                            fontSize: 16, color: Color(0xff36403A)),
                      ),
                    )
                  ])),
        ),
      ),
      onTap: () {
        // print("print card");
      },
    );
  }
}

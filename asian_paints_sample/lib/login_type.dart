import 'package:flutter/material.dart';
import 'package:asian_paints_sample/user_type_card.dart';

class LoginUserType extends StatelessWidget {
  LoginUserType({super.key});
  final users = UserTypes.getUser();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [UserTypeCard(user: users[0]), UserTypeCard(user: users[1])],
    );
  }
}

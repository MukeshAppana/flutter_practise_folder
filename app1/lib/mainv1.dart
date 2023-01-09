// import 'package:flutter/material.dart';

// void main() {
//   runApp(const Mylogin());
// }

// class Mylogin extends StatelessWidget {
//   const Mylogin({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'CODETRU APP',
//       theme: ThemeData(
//         primarySwatch: Colors.yellow,
//       ),
//       home: const Login(title:'Login Page'),
//     );
//   }
// }

// class Login extends StatelessWidget {
//   const Login({super.key, required this.title});

//   final String title;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title:Text(title),
//       ),
//       body: Column(
//         children: [
//           SizedBox(
//             width: 200,
//             height: 300,
//             child:Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [Image.asset("assets/CODETRU_Logo.png"),
//             Image.asset("assets/CODETRU_Lettering.png")],
//             )
//           ),
//           Expanded(
//             child: Container(
//               margin: const EdgeInsets.all(40),
//               width: 400,
//               decoration: const BoxDecoration(
//                 color: Colors.white,
//                 borderRadius:  BorderRadius.only(
//                   topLeft: Radius.circular(30),
//                   topRight: Radius.circular(30), 
//                 )
//               ),
//               child: Padding(padding: const EdgeInsets.all(22.0),
//               child: SingleChildScrollView(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Text("Email",style: TextStyle(color:Colors.black,fontSize: 22,fontWeight: FontWeight.bold,
//                     ),
//                     ),
//                     const SizedBox(height: 10),
//                     Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(12),
//                         color: Colors.black,
//                       ),
//                       child: const TextField(
//                         style: TextStyle(color: Colors.white),
//                         decoration: InputDecoration(
//                           border: InputBorder.none,
//                           prefixIcon:Icon(Icons.email,color: Colors.white,),
//                           label:Text('Enter Email'),
//                           labelStyle: TextStyle(color: Colors.white),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 15,),
//                     const Text('Password',style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold
//                     ),
//                     ),
//                     const SizedBox(height: 15,),
//                     Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(12),
//                         color: Colors.black,
//                       ),
//                       child: const TextField(
//                         style: TextStyle(color: Colors.white),
//                         decoration: InputDecoration(
//                           border: InputBorder.none,
//                           prefixIcon: Icon(Icons.key,color: Colors.white,),
//                           label: Text('Enter Password'),
//                           labelStyle: TextStyle(color: Colors.white),
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               ),
//             ),
//             )
//         ],

//       ),
//     );
//   }
// }
// import 'package:education/screen/login_screen.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';


// class HomeScreen extends StatelessWidget {
// const HomeScreen({super.key});

// Future<void> logout(BuildContext context) async {
// await FirebaseAuth.instance.signOut();

// try {
//   await GoogleSignIn.instance.disconnect();
// } catch (_) {}

// if (context.mounted) {
//   Navigator.pushAndRemoveUntil(
//     context,
//     MaterialPageRoute(
//       builder: (_) => const LoginScreen(),
//     ),
//     (route) => false,
//   );
// }

// }

// @override
// Widget build(BuildContext context) {
// final User? user = FirebaseAuth.instance.currentUser;

// return Scaffold(
//   appBar: AppBar(
//     title: const Text('Home'),
//     centerTitle: true,
//     actions: [
//       IconButton(
//         icon: const Icon(Icons.logout),
//         onPressed: () => logout(context),
//       ),
//     ],
//   ),
//   body: Center(
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         CircleAvatar(
//           radius: 50,
//           backgroundImage: user?.photoURL != null
//               ? NetworkImage(user!.photoURL!)
//               : null,
//           child: user?.photoURL == null
//               ? const Icon(Icons.person, size: 50)
//               : null,
//         ),
//         const SizedBox(height: 20),

//         Text(
//           user?.displayName ?? 'No Name',
//           style: const TextStyle(
//             fontSize: 22,
//             fontWeight: FontWeight.bold,
//           ),
//         ),

//         const SizedBox(height: 10),

//         Text(
//           user?.email ?? 'No Email',
//           style: const TextStyle(
//             fontSize: 16,
//             color: Colors.grey,
//           ),
//         ),

//         const SizedBox(height: 30),

//         ElevatedButton.icon(
//           onPressed: () => logout(context),
//           icon: const Icon(Icons.logout),
//           label: const Text('Logout'),
//         ),
//       ],
//     ),
//   ),
// );

// }
// }

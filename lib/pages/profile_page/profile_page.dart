import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  @override
  State<ProfilePage> createState() => _ProfilePage();

}

class _ProfilePage extends State<ProfilePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Profile Page'),
    );
  }
}
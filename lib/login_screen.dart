import 'package:flutter/material.dart';
import 'package:multi_rolebased_app/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: 'Email',
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                hintText: 'Password',
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              controller: ageController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'age',
              ),
            ),

           SizedBox(height: 40,),
            InkWell(
              onTap: () async {
              SharedPreferences sp = await SharedPreferences.getInstance();
              sp.setString('email', emailController.text.toString());
              sp.setString('age', ageController.text.toString());
              sp.setBool('islogin', true);
              
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) =>  HomeScreen()));
              },
              child: Container(
                height: 50,
                width: double.infinity,
                color: Colors.green,
                child: Center(child: Text('Tap To Login' ,)),
              ),
            )
          ],
        ),
      ),
    );
  }
}

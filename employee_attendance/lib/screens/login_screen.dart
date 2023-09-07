import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
   const LoginScreen({super.key});

    @override
    State<LoginScreen> createState() => _LoginScreenState();
}

  class _LoginScreenState extends State<LoginScreen> {
    final TextEditingController _emailController = TextEditingController();

    @override
    Widget build(BuildContext context) {
       double screenWidth = MediaQuery.of(context).size.width;
       double screenHeight = MediaQuery.of(context).size.height;

       return Scaffold(
          resizeToAvoidBottomInset: false,
          body:Column(
            children: [
             Container(
               height: screenHeight/3,
               width: screenWidth,
               decoration: const BoxDecoration(
                 color: Color.fromARGB(255, 1, 32, 58),
                 borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(70),
                  bottomLeft: Radius.circular(70)
                 ),
               ),
                child : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:const [
                    Icon(Icons.qr_code_scanner, color: Colors.white70,size:80,),
                    SizedBox(height: 20,),
                    Text('Giddens TimeKeeper App',style:TextStyle(
                      fontSize:25,
                      color: Color.fromARGB(179, 190, 242, 2),
                      fontWeight:FontWeight.bold
                    )),
                  ],
                ),
             ),
           ],
          ),
       );
    }

  }
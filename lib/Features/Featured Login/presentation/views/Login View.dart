import 'package:carz/core/Utils/Widgets/Custom%20TextField.dart';
import 'package:carz/core/Utils/Widgets/Custom%20button.dart';
import 'package:flutter/material.dart';

import '../../../../core/Styles/styles.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
          child: Column(
            children: [
              Center(
                  child: Image.asset('assets/images/C.png')),
              SizedBox(
                height: 70,),
              Text(
                'Login',style: Style.textStyle20,),
              Text(
                'Welcome to Car Store',style: Style.textStyle14,),
              SizedBox(
                height: 40,),
              CustomTextFormField(
                  hintText: 'user name',
                  warninText: 'please enter user name',
                  prefix: Icon(Icons.person,color: Colors.grey,),
              ),
              SizedBox(
                height: 20,),
              CustomTextFormField(
                hintText: 'password',
                warninText: 'please enter password',
                prefix: Icon(Icons.lock,color: Colors.grey,),
              ),
              SizedBox(
                height: 20,),
              Text(
            'Forgot password?',
            style: Style.textStyle14.copyWith(fontWeight: FontWeight.bold),
          ),
              SizedBox(
                height: 20,),
              Custombutton(
                  title: 'Login'),
              SizedBox(
                height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text('Don\'t have an account?',
                    style: Style.textStyle14.copyWith(fontWeight: FontWeight.bold,color: Colors.grey),),
                  TextButton(
                    onPressed: (){
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context)=> Container()));

                    },
                    child:   Text('Sign Up',
                      style: Style.textStyle14.copyWith(color: Colors.orange,fontWeight: FontWeight.bold),),),
                ],
              ),



            ],
          ),
        ),
      ),
    );
  }
}

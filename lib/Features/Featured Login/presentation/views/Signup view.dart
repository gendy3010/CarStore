import 'package:carz/Features/Featured%20Login/presentation/views/Login%20View.dart';
import 'package:carz/core/Utils/Widgets/Custom%20TextField.dart';
import 'package:carz/core/Utils/Widgets/Custom%20button.dart';
import 'package:carz/core/Utils/Widgets/CustomDivider.dart';
import 'package:flutter/material.dart';

import '../../../../core/Styles/styles.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Center(
                    child: Image.asset('assets/images/C.png')),
                SizedBox(
                  height: 45,),
                Text(
                  'Sign Up',style: Style.textStyle20,),
                Text(
                  'Find your dream car!',style: Style.textStyle14,),
                SizedBox(
                  height: 30,),
                CustomTextFormField(
                    hintText: 'Full name',
                    warninText: 'please enter your name',
                    prefix: Icon(Icons.person,color: Colors.grey,),
                ),
                SizedBox(
                  height: 15,),
                CustomTextFormField(
                  hintText: 'email adress',
                  warninText: 'please enter your email',
                  prefix: Icon(Icons.email,color: Colors.grey,),
                ),
                SizedBox(
                  height: 15,),
                CustomTextFormField(
                  hintText: 'phone number',
                  warninText: 'please enter your number',
                  prefix: Icon(Icons.phone,color: Colors.grey,),
                ),
                SizedBox(
                  height: 15,),
                CustomTextFormField(
                  hintText: 'password',
                  warninText: 'please enter password',
                  prefix: Icon(Icons.lock,color: Colors.grey,),
                ),
                SizedBox(
                  height: 20,),
                Custombutton(
                    title: 'Sign Up'),
                SizedBox(
                  height: 5,),
                Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomDivider(),
                        Text(
                          'Or',style: TextStyle(
                          color: Colors.grey
                        ),),
                        CustomDivider(),
                      ],
                    ),
                TextButton(
                 onPressed: (){
                   Navigator.pushReplacement(context,
                       MaterialPageRoute(builder: (context)=> Container()));

                 },
                 child:   Text('Sign Up with',
                   style: Style.textStyle14.copyWith(color: Colors.orange,fontWeight: FontWeight.bold),),),
                SizedBox(
                  height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   Image.asset('assets/images/facebook.png'),
                    SizedBox(width: 15,),
                    Image.asset('assets/images/instagram.png'),
                    SizedBox(width: 15,),
                    Image.asset('assets/images/youtube.png'),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account?',
                      style: Style.textStyle14.copyWith(fontWeight: FontWeight.bold,color: Colors.grey),),
                    TextButton(
                      onPressed: (){
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context)=> LoginView()));

                      },
                      child:   Text('Sign In',
                        style: Style.textStyle14.copyWith(color: Colors.orange,fontWeight: FontWeight.bold),),),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

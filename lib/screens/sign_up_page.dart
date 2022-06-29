import 'dart:developer';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:internship_task1/widgets/custom_button.dart';
import 'package:internship_task1/widgets/custom_redirecting_text.dart';
import 'package:internship_task1/widgets/custom_text_field.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  final _emailNumberController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _passwordNumberController = TextEditingController();

  final _emailErrorText = 'email should not be empty';
  final _phoneErrorText = 'phone should not be empty';
  final _passwordErrorText = 'password should not be empty';

  final _formField = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
              children: [
                // decorating image and back button
                Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Image.asset('assets/background.png',),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              primary: Colors.white
                          ),
                          onPressed: (){
                            Navigator.of(context).pop();
                          },
                          child: const Icon(Icons.arrow_back_ios, color: Colors.deepPurple,)
                      ),
                    ),
                  ],
                ),
                // form main title
                const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 24.0),
                      child: Text('Registering', style: TextStyle(fontSize: 24),),
                    )),
                Form(
                  key: _formField,
                  child: Column(
                    children: [
                      //email
                      CustomTextField(
                        textFieldKey: const Key('signUp_page_email_text_field'),
                        label: 'Email',
                        hint: 'enter your email',
                        controller: _emailNumberController,
                        keyboardInputType: TextInputType.emailAddress,
                        validator:  (value){
                          if(value!.isEmpty){
                            return _emailErrorText;
                          }
                          return null;
                        },
                        onChanged: (value){
                          setState(() {
                          });
                        },),
                      //phone number field
                      CustomTextField(
                        textFieldKey: const Key('signUp_page_phone_text_field'),
                        label: 'Phone Number',
                        hint: 'enter your phone number',
                        controller: _phoneNumberController,
                        keyboardInputType: TextInputType.phone,
                        prefixIcon:  CountryCodePicker(
                          key: const Key('signUp_country_code_picker'),
                          barrierColor: Colors.deepPurple,
                          initialSelection: 'EG',
                          showCountryOnly: false,
                          onChanged: (value){
                            setState(() {

                            });
                          },
                        ),
                        validator:  (value){
                          if(value!.isEmpty){
                            return _phoneErrorText;
                          }
                          return null;
                        },
                        onChanged: (value){
                          setState(() {
                          });
                        },),
                      // password
                      CustomTextField(
                        textFieldKey: const Key('signUp_page_password_text_field'),
                        label: 'Password',
                        hint: 'enter your password',
                        controller: _passwordNumberController,
                        keyboardInputType: TextInputType.text,
                        obscureText: true,
                        validator:  (value){
                          if(value!.isEmpty){
                            return _passwordErrorText;
                          }
                          return null;
                        },
                        onChanged: (value){
                          setState(() {
                          });
                        },),
                    ],
                  ),
                ),
                //sign up button
                Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: CustomButton(
                    buttonKey: const Key('signUp_page_sign_up_button'),
                    label: 'Sign UP',
                    onPressed: (){
                      if(_formField.currentState!.validate()){
                        Navigator.pushNamed(context, '/homePage');
                      }
                      else {
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(
                            const SnackBar(content: Text('all field must be valid')),
                          );
                        return log('validation error');
                      }
                    },
                  ),
                ),
                //having account(sign in)
                CustomRedirectingText(
                  questionText: 'Already having an account? ',
                  pageNameText: 'Sign In',
                  onTap: () {
                    Navigator.pushNamed(context, '/signInPage');
                  },
                ),
              ],
            )
        )
    );
  }
}

import 'dart:developer';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:internship_task1/screens/home_page.dart';
import 'package:internship_task1/widgets/custom_button.dart';
import 'package:internship_task1/widgets/custom_redirecting_text.dart';
import 'package:internship_task1/widgets/custom_text_field.dart';


class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {

  final _phoneNumberController = TextEditingController();
  final _errorText = 'phone number should not be empty';
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
                    Image.asset('assets/background_big.png',),
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
                      child: Text('Sign In', style: TextStyle(fontSize: 24),),
                    )),
                Form(
                  key: _formField,
                  child: Column(
                    children: [
                      //phone number field
                      CustomTextField(
                        textFieldKey: const Key('sign_in_page_phone_text_field'),
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
                            return _errorText;
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
                //sign in button
                Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: CustomButton(
                    buttonKey: const Key('login_page_sign_in_button'),
                    label: 'Sign In',
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
                //not having account(sign up)
                CustomRedirectingText(
                  questionText: 'You Do not have an account? ',
                  pageNameText: 'Sign Up',
                  onTap: () {
                    Navigator.pushNamed(context, '/signUpPage');
                  },
                ),
              ],
            )
        )
    );
  }


}


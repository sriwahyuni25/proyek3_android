import 'package:flutter/material.dart';
import 'package:sakitgi/theme.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(
            'Registrasi',
            style: primaryTextStyle.copyWith(
              fontSize: 24,
              fontWeight: semiBold,
            ),
            ),
            SizedBox(height: 2,
            ),
            Text(
              'Create your account',
               style: primaryTextStyle.copyWith(
              fontSize: 14,
              fontWeight: regular,
            ),
            ),
        ],
        )
      );
    }
 

    Widget namaInput(){
      return Container(
        margin: EdgeInsets.only(top: 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nama',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 50,
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                decoration: BoxDecoration(
                  color: backgroundColor2,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icon_profil.png',
                      width: 17,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Masukan Nama',
                          hintStyle: secondaryTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      );
    }

    Widget unameInput(){
      return Container(
        margin: EdgeInsets.only(top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Username',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 50,
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                decoration: BoxDecoration(
                  color: backgroundColor2,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icon_profil.png',
                      width: 17,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Masukan Username',
                          hintStyle: secondaryTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      );
    }

    Widget emailInput(){
      return Container(
        margin: EdgeInsets.only(top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 50,
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                decoration: BoxDecoration(
                  color: backgroundColor2,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icon_email2.png',
                      width: 17,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Masukan Email',
                          hintStyle: secondaryTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      );
    }

    Widget pwInput(){
      return Container(
        margin: EdgeInsets.only(top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 50,
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                decoration: BoxDecoration(
                  color: backgroundColor2,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icon_password.png',
                      width: 17,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: primaryTextStyle,
                        obscureText: true,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Masukan Password',
                          hintStyle: secondaryTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      );
    }


    Widget signUpButton(){
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        child: TextButton(
          onPressed: (){
            Navigator.pushNamed(context, '/home');
          },
          style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(
            'Register',
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            )
            ),
        ),
      );
    }


    Widget footer(){
      return Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sudah punya akun?  ',
              style: primaryTextStyle.copyWith(
                fontSize: 12,
              )
            ),
            GestureDetector(
              onTap: (){
                Navigator.popAndPushNamed(context, '/sign-in');
              },
            child: Text(
              'Login',
              style: thirdTextStyle.copyWith(
                fontSize: 12,
                fontWeight: medium,
              ),
            ),
            ),
        ],
        ),
      );
    }
    
    return Scaffold(
      backgroundColor: secondaryColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            header(),
            namaInput(),
            unameInput(),
            emailInput(),
            pwInput(),
            signUpButton(),
            footer(),
            Spacer(),
        ],
        ),
      ),
      ),
    );
  }
}
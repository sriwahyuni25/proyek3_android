import 'dart:math';

import 'package:flutter/material.dart';

import '../../theme.dart';

class KonsultasiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor3,
        centerTitle: true,
        title: Text(
          'Konsultasi',
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget content() {
  return Expanded(
    child: Container(
      color: backgroundColor2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/icon_konsultasi.png',
            width: 80,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Oops konsultasi tidak ada?',
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            'Anda belum pernah melakukan konsultasi',
            style: primaryTextStyle,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 44,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 10,
                ),
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                'Konsultasi',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}


    return Column(
      children: [
        header(),
        content(),
      ],
    );
  }
}

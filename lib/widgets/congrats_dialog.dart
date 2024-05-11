import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Future<dynamic> congratsDialog(BuildContext context, {required message}) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        title: Text(
          'Congratulations!',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              fontFamily: GoogleFonts.inter().fontFamily),
        ),
        content: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(message,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18,
                  height: 0,
                  fontFamily: GoogleFonts.inter().fontFamily)),
        ),
        actions: [
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffDB3022)),
              onPressed: () => Navigator.pop(context),
              child: Text('OKAY',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: GoogleFonts.inter().fontFamily)),
            ),
          ),
        ],
      );
    },
  );
}

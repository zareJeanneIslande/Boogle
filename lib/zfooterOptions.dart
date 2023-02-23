import 'package:flutter/material.dart';

class FooterOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Advertising Programs',
              style: TextStyle(fontSize: 15, fontFamily: 'arial', decoration: TextDecoration.underline,
                color: Colors.blue,),
            ),
            SizedBox(width: 30,),
            Text(
              'Business Solutions',
              style: TextStyle(fontSize: 15, fontFamily: 'arial', decoration: TextDecoration.underline,
                color: Colors.blue,),
            ),
            SizedBox(width: 30,),
            Text(
              'About Booble',
              style: TextStyle(fontSize: 15, fontFamily: 'arial', decoration: TextDecoration.underline,
                color: Colors.blue,),
            ),
          ],
        ),

        const SizedBox(height: 10,),
        const Text(
          '(c) Google',
          style: TextStyle(fontSize: 15, fontFamily: 'arial'),
        )
      ],
    );
  }
}

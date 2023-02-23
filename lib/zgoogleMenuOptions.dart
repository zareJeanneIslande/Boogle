import 'package:booble/signup.dart';
import 'package:flutter/material.dart';

class GoogleMenuOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, right: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Web",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'arial'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Images",
                      style: TextStyle(
                          fontSize: 15,
                          decoration: TextDecoration.underline,
                          color: Colors.blue,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'arial')),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Maps",
                      style: TextStyle(
                          fontSize: 15,
                          decoration: TextDecoration.underline,
                          color: Colors.blue,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'arial')),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("News",
                      style: TextStyle(
                          fontSize: 15,
                          decoration: TextDecoration.underline,
                          color: Colors.blue,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'arial')),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("More",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'arial')),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.square_foot),
                ),
              ],
            ),

            Row(children: [
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Boogle',
                      style: TextStyle(
                          fontFamily: 'arial',
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  )
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10, top: 13, bottom: 13),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const Signup();
                    }));
                  },
                  child: const Text(
                    'Sign in',
                    style: TextStyle(
                        fontFamily: 'arial',
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
            )
          ],
        ),
      ),
    );
  }
}

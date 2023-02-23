import 'package:booble/search-result.dart';
import 'package:flutter/material.dart';

class GoogleSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text("B", style: TextStyle(
                          fontSize: 30.0, color: Colors.blue
                      ),),
                      Text("o", style: TextStyle(
                          fontSize: 30.0, color: Colors.red
                      ),),
                      Text("o", style: TextStyle(
                          fontSize: 30.0, color: Colors.yellow
                      ),),
                      Text("b", style: TextStyle(
                          fontSize: 30.0, color: Colors.blue
                      ),),
                      Text("l", style: TextStyle(
                          fontSize: 30.0, color: Colors.green
                      ),),
                      Text("e", style: TextStyle(
                          fontSize: 30.0, color: Colors.red
                      ),)
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 500,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: Offset(0.0, 0.5),
                              blurRadius: 5.0,
                              spreadRadius: 0.3,
                            )
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: TextField(
                            cursorColor: Theme.of(context).primaryColor,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 12.0, vertical: 13.0),
                            ),
                            maxLines: 1,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Advanced Search',
                              style: TextStyle(fontSize: 15, fontFamily: 'arial', decoration: TextDecoration.underline,
                                color: Colors.blue,),
                            ),
                            const SizedBox(height: 5,),
                            Text(
                              'Preferences',
                              style: TextStyle(fontSize: 15, fontFamily: 'arial', decoration: TextDecoration.underline,
                                color: Colors.blue,),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 12.0, top: 10),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return const SearchResult(); }));
                            },
                            child: Text(
                              "Google Search",
                              style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.white,
                                  fontFamily: 'arial'),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0, top: 10),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "I'm Feeling Lucky",
                              style: TextStyle(
                                  fontWeight: FontWeight.w200,
                                  fontSize: 15.0,
                                  color: Colors.white,
                                  fontFamily: 'arial'),
                            ),
                          ),
                        )
                      ],
                    )
                ),

                const Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Text("Bienvenue sur Booble",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontFamily: 'arial')
                      ),
                    )
                )
              ],
            ),
          ),
        )
    );
  }
}

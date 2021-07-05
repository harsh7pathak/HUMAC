import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';

class Login extends StatelessWidget {
  TextEditingController _idController = TextEditingController();
  TextEditingController _passController = TextEditingController();

  //GlobalKey<FormState> formkey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/loginbackground.jpg'),
              fit: BoxFit.cover,)
          ),
          //color: Colors.black,
          // child: Align(
          //   alignment: Alignment(0.0, -0.5),
          //   child: Text(
          //     'HuMaC',
          //     style: TextStyle(
          //       fontWeight: FontWeight.bold,
          //       fontSize: 50.0,
          //       letterSpacing: 10,
          //       color: Colors.amber,
          //     ),
          //   ),
          // ),
        ),
        // Container(
        //   child: Align(
        //     alignment: Alignment(0.0, -0.25),
        //     child: Text(
        //       'Human Machine Convergence',
        //       style: TextStyle(
        //         fontSize: 25.0,
        //         color: Colors.white,
        //       ),
        //     ),
        //   ),
        // ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Stack(
              children: [
                SingleChildScrollView(

                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black26,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20.0)),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 30.0, horizontal: 10.0),

                          child: TextFormField(
                            controller: _idController,
                            autocorrect: false,
                            autofocus: false,
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                            decoration: InputDecoration(
                              hintText: "Login ID",
                              prefixIcon: Padding(
                                padding: EdgeInsets.symmetric(),
                                child: Icon(
                                  Icons.account_circle_outlined,
                                  color: Colors.black,
                                ),
                              ),
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Colors.grey[200],
                              contentPadding: EdgeInsets.all(17.0),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12.0)),
                                borderSide:
                                    BorderSide(color: Colors.black, width: 2),
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: TextFormField(
                            controller: _passController,
                            autocorrect: false,
                            obscureText: true,
                            autofocus: false,
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                            decoration: InputDecoration(
                              hintText: "Pass Key",
                              prefixIcon: Padding(
                                padding: EdgeInsets.symmetric(),
                                child: Icon(
                                    Icons.lock,
                                  color: Colors.black,
                                ),
                              ),

                              suffixIcon: Padding(
                                padding: EdgeInsets.symmetric(),
                                  child: Icon(
                                    Icons.security,
                                    color: Colors.blueAccent,
                                  ),
                              ),
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Colors.grey[200],
                              contentPadding: EdgeInsets.all(17.0),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12.0)),
                                borderSide:
                                    BorderSide(color: Colors.black, width: 2),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(color: Colors.black),
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                          child: MaterialButton(
                            onPressed: () {},
                            minWidth: 250.0,
                            padding: EdgeInsets.symmetric(
                              vertical: 12.0,
                            ),
                            child: Text(
                              "Forgot Pass Key ? ",
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),

                        MaterialButton(
                          onPressed: () {
                            if ((_idController.text.compareTo('admin') == 0) &&
                                (_passController.text.compareTo('123456') ==
                                    0)) //check if the username is equals to 'admin' and password equals to '123456'
                            {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => HomePage()));
                            } // page transition to homepage
                            else {
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                  content: Text(
                                      'Incorrect Credentials'))); // shows message of invalid credentials
                            }
                          },
                          minWidth: 250.0,
                          splashColor: Colors.amber,
                          color: Colors.black,
                          padding: EdgeInsets.symmetric(
                            vertical: 12.0,
                          ),
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {},
                          minWidth: 250.0,
                          //splashColor: Colors.red[800],
                          //color: Colors.red,
                          padding: EdgeInsets.symmetric(
                            vertical: 10.0,
                          ),

                          child: Text(
                            "New User / Register ",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ],
    ));
  }
}

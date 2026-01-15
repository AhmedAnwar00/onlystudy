import 'package:flutter/material.dart';

import 'details_screen.dart';

class loginScreen extends StatelessWidget {
  const loginScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Image.asset("assets/images/login_coffee.png",width: double.infinity,fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 64),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Coffee so good, your taste buds will love it.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 34,
                    fontWeight: FontWeight.w600,
                  ),


                ),
                Text("The best grain, the finest roast, the powerful flavor",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromRGBO(169, 169, 169, 1),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),

                ),
                SizedBox(height: 17,),
                  InkWell(
                    onTap :() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen()));
                      },
                      child: Container(
                      width: 317,
                      height: 54,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),


                    ),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/logos/google.png"),
                          SizedBox(width: 10,),
                          Text("Continue with Google",
                            style: TextStyle(
                              color: Color.fromRGBO(0,0,0,.54),
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),

                            ),
                        ],
                      ),
                    ),
                  )
              ],
            ),
          ),
          

        ],
      ),
    );
  }
}

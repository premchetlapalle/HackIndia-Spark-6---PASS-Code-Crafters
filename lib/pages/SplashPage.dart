import 'package:flutter/material.dart';
import 'package:woostorestackflutter/pages/DiscoveryPage.dart';

import '../utils/Constants.dart';
import '../widgets/CustomButtonWIdget.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Constants constants = Constants();

    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/bg1.jpg"),
                    fit: BoxFit.cover,
                    scale: 1
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50.0,left: 30 ,top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Padding(
                  padding: const EdgeInsets.only(top:20.0),
                  child: Container(
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: MediaQuery.of(context).size.width * 0.80,

                      child: Text("Welcome to the Web3 NFT Marketplace",style: TextStyle(fontSize: 35,fontWeight: FontWeight.normal,color: constants.mainWhiteGColor),)),
                ),
                customButtonWidget((){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
                }, 25, constants.mainButttonColor, "Explore Store", constants.mainBlackColor,150),
              ],
            ),
          )
        ],
      )
    );
  }
}

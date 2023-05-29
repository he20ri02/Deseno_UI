import 'package:flutter/material.dart';

class Welcome extends StatelessWidget{
  const Welcome({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget> [
          const Fondo(),
          Column(
            children: <Widget>[
              
              SizedBox(
                height: _height * 1.0,
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top:140.0),
                      child: Column(
                        children: <Widget>[
                          Stack(
                            alignment: AlignmentDirectional.center,
                            children: <Widget>[
                              Image.asset(
                                'lib/src/images/1.png',
                                width: 225.44,
                                height: 294.81,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                    margin: const EdgeInsets.only(top:35.0),
                    child:const Wrap(
                      alignment: WrapAlignment.center,
                      children: <Widget>[
                      Text('Welcome to TDG!',
                        style: TextStyle(color: Colors.white,
                        fontSize: 30.0),
                        ),
                    ],
                  )
                  ),
                  const SizedBox(height: 20.0,),
                  const Wrap(
                    alignment: WrapAlignment.center,
                    children: <Widget>[
                      Text('A one-stop portal for you to learn the',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 18.0),
                    ),
                    Text('lasted technologies from SCRATCH',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 18.0),
                    )
                  ],
                  ),
                  const SizedBox(height: 30.0,),
                  
                  Container(
                    width: double.infinity,
                    height: 55.0,
                    margin: const EdgeInsets.only(left: 40.0, right:40.0 ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color.fromARGB(255, 22, 146, 125)
                    ),
                    child:const TextButton(
                      onPressed: null,
                      child: Text('Get Started>',
                        style: TextStyle(
                           fontSize: 25,
                            color: Colors.white,
                            //fontWeight: FontWeight.bold
                         ),
                      ),
                    ),
                  ),
                  

                  ],
                ),
              )
            ],
          ),
          
        ],
      ),
    );
  }
  
}

//////////////////Fondo
class Fondo extends StatelessWidget {
  const Fondo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 8, 32, 75),
      ),
    );
  }
}
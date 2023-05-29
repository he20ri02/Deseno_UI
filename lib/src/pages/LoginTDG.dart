import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Stack(
        children: [
          Fondo(),
          Contenido(),
        ],
      ),
    );
  }
}

////////////////Contenido////////////////////////////////////////
class Contenido extends StatefulWidget {
  const Contenido({super.key});

  @override
  State<Contenido> createState() => _ContenidoState();
}

class _ContenidoState extends State<Contenido> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 100,
            child:Container (
              alignment: Alignment.topLeft,
              child: IconButton(
                onPressed: (){}, 
                icon: const Icon(
                  Icons.arrow_back_ios, color: Colors.white,
                  )),)
          ),
          const Text(
            'Sign in to TDG and',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            ),
            const Text(
            'continue',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            ),

          const SizedBox(height: 20,),

          const Text(
            'Enter your email and password below to',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              letterSpacing: 1.5,
            ),
          ),
          const Text(
            'continue to the The Growing Developer and let',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              letterSpacing: 1.5,
            ),
          ),
          const Text(
            'the learning begin!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              letterSpacing: 1.5,
            ),
          ),

          const SizedBox(height: 20,),

          const Datos(),
        ],
      ),
    );
  }
}


//////////Datos usado en contenido///

class Datos extends StatefulWidget {
  const Datos({super.key});

  @override
  State<Datos> createState() => _DatosState();
}

class _DatosState extends State<Datos> {
  bool obs=true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      //decoracion
      //Se agrega el child
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          const SizedBox(height: 5,),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 20),
              prefixIcon: Icon(Icons.account_circle_rounded,color: Colors.white,),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromARGB(255, 23, 26, 175)),
              ),
              focusedBorder: OutlineInputBorder(  // Borde cuando el campo está enfocado
              borderSide: BorderSide(color: Colors.blue)),
              hintText: '  Username',
              hintStyle: TextStyle(
                color: Colors.white,
              )
            ), 
          ),

          const SizedBox(height: 20,),

          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 20),
              prefixIcon: Icon(Icons.lock,
              color: Colors.white,),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromARGB(255, 23, 26, 175)),
              ),
              focusedBorder: OutlineInputBorder(  // Borde cuando el campo está enfocado
              borderSide: BorderSide(color: Colors.blue)),
              hintText: '  Password',
              hintStyle: TextStyle(
                color: Colors.white,
              )
            ), 
          ),

          const SizedBox( height: 20,),
          const Botones(),

        ],
      ),
    );
  }
}


///////////Botones////

class Botones extends StatelessWidget {
  const Botones({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        //Boton login
        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 22, 146, 125))
            ),
            
            child:
            const Text(
              'Login',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),

        const SizedBox(
          width: double.infinity,
          height: 25,
        ),
        
         SizedBox(
          width: double.infinity,
          height: 50,
          
          
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>( Color.fromARGB(255, 32, 57, 201)),
            ),
            
            child:
            const Text(
              'Sing-in using Google',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),

      ],
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
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child:Column(
          children:<Widget>[
          Container(
            child: Container(
             height: 400,
              decoration: const  BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.fill,
                   
                )
              ),
              child:  Stack(children:<Widget> [
                    Positioned(
                       width: 80,
                       height: 200,
                       left: 60,
                      child: Container(
                        decoration: const BoxDecoration(
                          image:DecorationImage(
                            image: AssetImage('assets/images/light-1.png')
                          ),
                        ),
                      )     
                      ),
                    Positioned(
                      width: 80,
                      height: 140,
                      left: 150,
                      child:Container(
                        decoration: const BoxDecoration(
                          image:DecorationImage(
                            image: AssetImage('assets/images/foco1.png')
                          ),
                        ),
                      ),     
                      ),
                     Positioned(
                      width: 90,
                      height: 200,
                      left: 250,
                      child:Container(
                        decoration: const BoxDecoration(
                          image:DecorationImage(
                            image: AssetImage('assets/images/clock.png')
                          ),
                        ),
                      ),     
                      ),
                      Positioned(
                        child: Container(
                          margin: const EdgeInsets.only(top:50),
                          child:  const Center(
                            child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ),
              ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children:<Widget> [
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                  color: Colors.white,
                   border: Border(bottom: BorderSide(color: Colors.grey.shade100)),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [ 
                     BoxShadow(
                      color:Color.fromRGBO(124, 106, 226, 1),
                      blurRadius: 20.0, 
                      offset: Offset(0,10)     
                    )]

                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration:  BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                        ),
                        child: TextField(decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Correo o Numero de Telefono",
                          hintStyle: TextStyle(color: Colors.grey[400]),
                        ),
                        ),
                      ),
                        Container(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Contraseña",
                          hintStyle: TextStyle(color: Colors.grey[400]),
                        ),
                        ),
                      )
                    ]
                  ),
                ),
              const  SizedBox(
                  height: 30,
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                      colors: [
                         Color.fromRGBO(124, 106, 226, 1),
                          Color.fromRGBO(124, 106, 226, 1), 
                      ]
                      ),
                  ),
                  child: const Center(
                    child: Text("Iniciar Sesion",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  ),
                ),
                const SizedBox(height: 70,),
                   const Text(
                    "Olvidaste la contraseña?",style: 
                    TextStyle(color:  Color.fromRGBO(124, 106, 226, 6),
                    fontWeight: FontWeight.bold),),
              ],
            ),
            ),
          ],
        ),
        
      ),
    );
  }
}

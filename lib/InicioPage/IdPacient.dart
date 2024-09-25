import 'package:flutter/material.dart';
import 'package:saluddirecta_v2/HomePage/InicioPage.dart';

class IdPacient extends StatefulWidget {
  const IdPacient({super.key});

  @override
  State<IdPacient> createState() => _IdPacientState();
}

class _IdPacientState extends State<IdPacient> {
  final _formSignInKey = GlobalKey<FormState>();
  bool rememberPass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body:Column(
        children: [
          const Expanded(
            flex: 1,
            child:SizedBox(
              height:10,
            ),
          ),
          Expanded(   //contenedor blanco
              flex: 7,
              child: Container(
                padding:const EdgeInsets.fromLTRB(25.0, 50.0, 25.0, 20.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  )
                ),
                child: SingleChildScrollView(
                  child: Form(
                    key: _formSignInKey,
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [  //Texto del inicio
                        Text(
                          'Bienvenido',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                            fontFamily: 'Open Sans',
                          )
                        ),
                        const SizedBox(
                          width: 30,
                          height: 40,
                          ),
                        TextFormField(
                          validator: (value){
                            if(value == null || value.isEmpty){
                              return 'Ingrese su codigo de paciente';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            label: const Text('Codigo de Paciente'),
                            hintText: 'Digite el codigo de paciente',
                            hintStyle: const TextStyle(
                              color:Colors.black26,
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black26
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color:Colors.black12,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                          const SizedBox(
                          width: 30,
                          height: 40,
                          ),
                        TextFormField(   ///contraseña y sus estilos
                          obscureText: true,
                          obscuringCharacter: '*',
                          validator: (value){
                            if(value== null || value.isEmpty){
                              return 'Ingrese su contraseña';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            label: const Text('Contraseña'),
                            hintText: 'Ingrese su contraseña',
                            hintStyle: const TextStyle(
                              color: Colors.black,
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black26
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                              enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color:Colors.black12,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                          height: 40,
                        ),
                        Row(  //check de recordar contraseña
                          children: [
                            Checkbox(
                              value: rememberPass,
                              onChanged: (bool? value){
                                setState(() {
                                  rememberPass = value!;
                                },
                                );
                              },
                              activeColor: Colors.blue,
                            ),
                            const Text(
                              'Recordar la contraseña',
                              style: TextStyle(
                                color: Colors.black45,
                              )
                            )
                        ],
                        ),
                        const SizedBox(
                          width: 30,
                          height: 40,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(   //Boton de enviar
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              padding: EdgeInsets.only(left:100, right: 100,top: 15,bottom: 15),
                            ),
                            onPressed:() {
                              if(_formSignInKey.currentState!.validate() && rememberPass){
                                Navigator.push(
                                  context,
                                MaterialPageRoute(builder: (context)=> InicioPage())
                                );
                              } else if(!rememberPass){ //
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                      'Esta de acuerdo con la informacion',
                                    ),
                                  ),
                                );
                              }
                            },
                            child:const Text(
                              'Iniciar Sesion',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        )
                      ],
                    )
                  ),
                )
              ),
          ),
        ],
      )
    );
  }
}
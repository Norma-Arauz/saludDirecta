import 'package:flutter/material.dart';

//Formato de la lista de doctores que ha consultado
class Med extends StatelessWidget{
  final String imageAssetPath;
  final String nameDoc;
  final String espec;
  final String hospital;
  final String estado;

  const Med({
    Key? key,
    required this.imageAssetPath,
    required this.nameDoc,
    required this.espec,
    required this.hospital,
    required this.estado,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
        width: 343,
        height: 180,
        margin: const EdgeInsets.fromLTRB(30, 15, 15, 10),
        padding: const EdgeInsets.all(20),
        decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
            ),
        shadows: const [
            BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 3,
                offset: Offset(0, 0),
                spreadRadius: 0,
            )
        ],
        ),
        child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                width: 90,
                height: 90,
                child:Image.asset(imageAssetPath),
                ),
          const SizedBox(width:25),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                      Text(
                          nameDoc,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w600,
                              height: 0,
                          ),
                      ),
                      const SizedBox(height: 25),
                      Text(
                          espec,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                              height: 0.07,
                          ),
                      ),
                      const SizedBox(height: 25),
                      Text(
                          hospital,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                              height: 0.07,
                          ),
                      ),
                      const SizedBox(height: 50),
                      Text(
                          estado,
                          textAlign: TextAlign.justify,
                          style: const TextStyle(
                              color: Colors.blue,
                              fontSize: 18,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              height: 0.07,
                          ),
                            ),
                        ],
                        ),
                ),
              ],
              ),
          ] ,
          
        ),
        
    );
    }
  }
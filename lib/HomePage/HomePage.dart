import 'package:flutter/material.dart';
import 'package:saluddirecta_v2/HomePage/Recomend.dart';

class HomePage extends StatelessWidget{
    const HomePage({Key? key}) : super(key: key);

    @override

    Widget build(BuildContext context){
      return const Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
              child:Column(
                children: [
                  Text(
                    'Proxima Cita',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w600,
                        height: 0,
                    ),
                ),
                SizedBox(
                  height:15,
                ),
                CitaRecor(),
                SizedBox(
                  height:25,
                ),
                Recomend(),
        ]
        ),
      ),
      ),
      );
    }
}

  //REcordario de la proxima cita
class CitaRecor extends StatelessWidget{

  const CitaRecor({super.key});

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
      Container(
        width: 343,
        height: 176,
        padding: const EdgeInsets.all(16),
        decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
            ),
        shadows: [
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
        Container(
          width: 311,
          child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      Text(
                          'Dra.Maria Gonzalez',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w600,
                              height: 0,
                          ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                          'Cardiologa',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                              height: 0.07,
                          ),
                      ),
                      ],
              ),
            ),
          ],
        ),
        ),
            const SizedBox(width: 102),
            Expanded(
              child: Container(
                width: 80,
                height: 80,
                decoration: ShapeDecoration(
                    image: DecorationImage(
                        image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSH5nsHHaiWvSM5DZUiWqbZ7cway9x41EMUxQ&s"),
                        fit: BoxFit.cover,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                    ),
                ),
              ),
            ),
                ],
            ),
        ),
        const SizedBox(height: 16),
        Container(
            width: 311,
            padding: const EdgeInsets.all(16),
            decoration: ShapeDecoration(
                color: Color(0xFFF5FAFF),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                ),
            ),
            child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Container(
                      child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                          const SizedBox(width: 8),
                          Text(
                              'Lunes 23 de Septiembre',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                  height: 0.08,
                              ),
                                ),
                            ],
                        ),
                    ),
                    const SizedBox(width: 32),
                    Container(
                        child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                                const SizedBox(width: 8),
                                Text(
                                    '12:00-13:00',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600,
                                        height: 0.08,
                                    ),
                                ),
                            ],
                        ),
                    ),
                ],
            ),
        ),
    ],
    ),
)
      ]
    );
    }
  }
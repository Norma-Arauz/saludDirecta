import 'package:flutter/material.dart';

class RecTem extends StatefulWidget {
  const RecTem({super.key});

  @override
  State<RecTem> createState() => _RecTemState();
}

class _RecTemState extends State<RecTem> {
  @override
  Widget build(BuildContext context) {
    return Container(
    width: 343,
    height: 112,
    decoration: BoxDecoration(
        boxShadow: [
            BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 5,
                offset: Offset(0, 0),
                spreadRadius: 0,
            )
        ],
    ),
    child: Stack(
        children: [
            Positioned(
                left: 0,
                top: 0,
                child: Container(
                    width: 343,
                    height: 112,
                    decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 16,
                top: 16,
                child: Container(
                    child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Container(
                                width: 80,
                                height: 80,
                                decoration: ShapeDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage("https://www.el19digital.com/app/webroot/tinymce/source/2024/Enero/15-Enero/REPORTAJE/salud-(19).jpeg"),
                                        fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16),
                                    ),
                                ),
                            ),
                            const SizedBox(
                              width: 8,
                              height: 20,
                              ),
                            Container(
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        Text(
                                            'casos de influenza y malaria',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w600,
                                                height: 0.09,
                                            ),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                          height: 25,
                                          ),
                                        SizedBox(
                                            width: 223,
                                            height: 300,
                                            child: 
                                            Column(
                                              children: [
                                                Text(
                                                'Disminución de casos de influenza',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 12,
                                                    fontFamily: 'Montserrat',
                                                    fontWeight: FontWeight.w400,
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
                ),
            ),
        ],
    ),
);
  }
}

class RecTem2 extends StatefulWidget {
  const RecTem2({super.key});

  @override
  State<RecTem2> createState() => _RecTem2State();
}

class _RecTem2State extends State<RecTem2> {
  @override
  Widget build(BuildContext context) {
    return Container(
    width: 343,
    height: 112,
    decoration: BoxDecoration(
        boxShadow: [
            BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 5,
                offset: Offset(0, 0),
                spreadRadius: 0,
            )
        ],
    ),
    child: Stack(
        children: [
            Positioned(
                left: 0,
                top: 0,
                child: Container(
                    width: 343,
                    height: 112,
                    decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 16,
                top: 16,
                child: Container(
                    child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Container(
                                width: 80,
                                height: 80,
                                decoration: ShapeDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage("https://www.paho.org/sites/default/files/styles/max_1500x1500/public/2022-12/whatsappimage2022-11-23at1334032.jpeg?itok=vEeDxotX"),
                                        fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16),
                                    ),
                                ),
                            ),
                            const SizedBox(
                              width: 8,
                              height: 20,
                              ),
                            Container(
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        Text(
                                            'Jornada Vacunacion',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w600,
                                                height: 0.09,
                                            ),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                          height: 25,
                                          ),
                                        SizedBox(
                                            width: 223,
                                            height: 300,
                                            child: 
                                            Column(
                                              children: [
                                                Text(
                                                '17° jornada de vacunacion',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 12,
                                                    fontFamily: 'Montserrat',
                                                    fontWeight: FontWeight.w400,
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
                ),
            ),
        ],
    ),
);
  }
}
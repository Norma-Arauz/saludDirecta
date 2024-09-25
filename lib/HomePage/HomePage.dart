import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
    const HomePage({super.key});

    @override
    State<HomePage> createState() => _HomePageState();
}

  class _HomePageState extends State<HomePage>{
    @override

    Widget build(BuildContext context){
      return Scaffold(
        body: Column(children: const [
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
            CitaRecor(),
            Search(),
      ]
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
                      const SizedBox(height: 4),
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

//Barra para buscar noticias
class Search extends StatefulWidget{
  const Search ({Key? key}): super(key:key);

  @override
    State<Search> createState() => _SearchBar();
}

class _SearchBar extends State<Search> {

  //CREACION DE LA LISTA DE NOTICIAS
 /* static List<ListaNotc>  mainNotcList = [
    ListaNotc("Sistema de salud garantiza mayo bienestar a las familias",2024,
    "https://www.el19digital.com/app/webroot/tinymce/source/2024/Enero/15-Enero/REPORTAJE/salud-(19).jpeg"),
     ListaNotc("Avanza la transformacion digital en salud",2022,
    "https://www.paho.org/sites/default/files/styles/max_1500x1500/public/2022-12/whatsappimage2022-11-23at1334032.jpeg?itok=vEeDxotX"),
     ListaNotc("17° jornada cientifica de los trabajadores de la salud",2024,
    "https://www.vivanicaragua.com.ni/contenido/archivos/2024/08/silais-1280x520.jpg"),
     ListaNotc("Nicaragua Fortalece su atencion clinica para pacientes con autismo",2024,
    "https://www.tn8.tv/wp-content/uploads/2024/04/2-405.jpg"),
     ListaNotc("Fortalecimiento de la vigilancia entomológica comunitario",2024,
    "https://www.paho.org/sites/default/files/styles/max_1500x1500/public/2024-08/chagas2.jpg?itok=48KIhaHw"),
   /*  ListaNotc("Capacitaciones del personal de salud",2024,
    "https://100noticias.com.ni/media/cache/2024/04/23/3b/d4/3bd4924baf99145b42a084e6280bf708.jpg?capacitacion-personal-salud-nicaragua"),
     ListaNotc("Prevencion y control del dengue en Nicaragua",2024,
    "https://www.paho.org/sites/default/files/dengue2_0.jpg"),*/
  ];

    List<ListaNotc> display_list = List.from(mainNotcList);

  //ACTUALIZAR LISTA DE NOTCIAS
  void updateList(String value){
      setState(() {
        display_list = mainNotcList.where((element) => element.noticiaTittle!.toLowerCase().contains
        (value.toLowerCase())).toList();
      });
  }
*/
  @override
  Widget build(BuildContext context)
  {
    return Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        SizedBox(
          height: 60,
          width: 343,
          ),
            TextField(
           // onChanged: (value) => updateList(value),
            style:TextStyle(color: const Color.fromARGB(255, 29, 132, 216)),
              decoration:InputDecoration(
                  filled:true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius:BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                hintText:"Buscar",
                prefixIcon: Icon(Icons.search),
                prefixIconColor: Colors.blue.shade900,
      ),
     ),
      SizedBox(
        height: 20.0,
        ),
    /*  Expanded(
        child: ListView.builder(
          itemCount: display_list.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(display_list[index].noticiaTittle!,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
             ),
            ),
            subtitle: Text('${display_list[index].year!}',
            style:TextStyle(
              color: Colors.black,
              )
              ),
          ),
        ),
      ),*/
    ],
    ),
    );
  }
}

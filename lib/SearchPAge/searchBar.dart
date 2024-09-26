import 'package:flutter/material.dart';


//Barra para buscar noticias
class SearchB extends StatefulWidget{
  const SearchB ({Key? key}): super(key:key);

  @override
    State<SearchB> createState() => _SearchBar();
}

class _SearchBar extends State<SearchB> {

  @override
  Widget build(BuildContext context)
  {
    return Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
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
    ],
    ),
    );
  }
}

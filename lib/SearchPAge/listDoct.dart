
import 'package:flutter/material.dart';
import 'package:saluddirecta_v2/SearchPAge/newListDoc.dart';
import 'package:saluddirecta_v2/SearchPAge/searchBar.dart';

class ListDoc extends StatefulWidget {
  const ListDoc({super.key});

  @override
  State<ListDoc> createState() => _ListDocState();
}

class _ListDocState extends State<ListDoc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
            child: SingleChildScrollView(
              child: Center(
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                    'Doctores',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w600,
                      ),
                  ),
                ),
                const SizedBox(
                  height:2,
                ),
                const SearchB(),
                const SizedBox(
                  height:2,
                ),
                Container(
                padding: const EdgeInsets.fromLTRB(0,15,20,16),
                child: const Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        SizedBox(
                              height: 500,
                              child: NewListDoc(),
                            ),
                      ],
                      ),
                ),
              ),
                ],
              ),
              ),
            ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const dGreen = Color(0xFF2ac0a6);
const dWhite = Colors.white;
const dBlack = Colors.black;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhatsAppChat",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: dBlack,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: dWhite,
            size: 30,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_rounded,
              color: dWhite,
              size: 30,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          MenuSection(),
          Container(
            height: 100,
            color: Colors.red,
          ),
          Expanded(
            child: Container(
              height: 100,
              color: Colors.green,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: dGreen,
        child: const Icon(
          Icons.edit,
          size: 20,
        ),
      ),
    );
  }
}

class MenuSection extends StatelessWidget {
  final List menuItens = ["Message", "OnLine", "Groups", "Calls"];

  MenuSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: dBlack,
      height: 100,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: menuItens.map((item) {
              return Container(
                margin: EdgeInsets.only(right: 55),
                child: Text(
                  item,
                  style: GoogleFonts.inter(
                    color: Colors.white60,
                    fontSize: 29,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

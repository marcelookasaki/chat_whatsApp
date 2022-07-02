import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'chat_page.dart';

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
          FavoriteSection(),
          Expanded(
            child: MessageSection(),
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

class FavoriteSection extends StatelessWidget {
  FavoriteSection({Key? key}) : super(key: key);

  final List favoriteContacts = [
    {'name': 'Adriana Lima', 'profile': 'images/avatar/AdrianaLima.png'},
    {
      'name': 'Ana Beatriz Barros',
      'profile': 'images/avatar/Ana_Beatriz_Barros.png'
    },
    {
      'name': 'Emily Ratajkowski',
      'profile': 'images/avatar/EmilyRatajkowski.png'
    },
    {
      'name': 'Emma Stone',
      'profile': 'images/avatar/EmmaStone.png',
    },
    {
      'name': 'Gal Gadot',
      'profile': 'images/avatar/GalGadot.png',
    },
    {
      'name': 'Hannah Jeter',
      'profile': 'images/avatar/HannahJeter.png',
    },
    {
      'name': 'Jennifer Lawrence',
      'profile': 'images/avatar/JenniferLawrence.png'
    },
    {
      'name': 'Kristina Pimenova',
      'profile': 'images/avatar/KristinaPimenova.png'
    },
    {
      'name': 'Margot Robbie',
      'profile': 'images/avatar/LizaSoberano.png',
    },
    {
      'name': 'Adriana Lima',
      'profile': 'images/avatar/MargotRobbie.png',
    },
    {
      'name': 'Mila Kunis',
      'profile': 'images/avatar/MilaKunis.png',
    },
    {
      'name': 'Natalie Portman',
      'profile': 'images/avatar/NataliePortman.png',
    },
    {
      'name': 'Scarlett Johansson',
      'profile': 'images/avatar/ScarlettJohansson.png'
    },
    {
      'name': 'Taylor Hill',
      'profile': 'images/avatar/TaylorHill.png',
    },
    {
      'name': 'Yael Shelbia',
      'profile': 'images/avatar/YaelShelbia.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: dBlack,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: dGreen,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
            topLeft: Radius.circular(40),
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text(
                    "Favorite Contacts",
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                    size: 20,
                  ),
                  onPressed: null,
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: favoriteContacts.map((favorite) {
                  return Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(4),
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: dWhite,
                            shape: BoxShape.circle,
                          ),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage(favorite['profile']),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          favorite['name'],
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MessageSection extends StatelessWidget {
  MessageSection({Key? key}) : super(key: key);

  final List messages = [
    {
      'senderProfile': 'images/avatar/AdrianaLima.png',
      'senderName': 'Adriana Lima',
      'message': 'Olá Marcelo!',
      'unread': 2,
      'date': '17:25',
    },
    {
      'senderProfile': 'images/avatar/EmmaStone.png',
      'senderName': 'Emma Stone',
      'message': 'Oi Marcelo!',
      'unread': 5,
      'date': '10:12',
    },
    {
      'senderProfile': 'images/avatar/LizaSoberano.png',
      'senderName': 'Liza Soberano',
      'message': 'Tudo bom Marcelo!',
      'unread': 3,
      'date': '18:15',
    },
    {
      'senderProfile': 'images/avatar/ScarlettJohansson.png',
      'senderName': 'Scarlett Johansson',
      'message': 'Obrigada Marcelo!',
      'unread': 8,
      'date': '21:02',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: messages.map((messages) {
          return InkWell(
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatPage(),
                ),
              ),
            },
            splashColor: dGreen,
            child: Container(
              padding: EdgeInsets.only(left: 30, right: 10, top: 15),
              child: Row(
                children: [
                  Container(
                    width: 62,
                    height: 62,
                    decoration: BoxDecoration(
                      color: dGreen,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          messages['senderProfile'],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  messages['senderName'],
                                  style: GoogleFonts.inter(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Wrap(
                                  children: [
                                    Text(
                                      messages['message'],
                                      style: GoogleFonts.inter(
                                        color: Colors.black87,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(messages['date']),
                                messages['unread'] != 0
                                    ? Container(
                                        padding: const EdgeInsets.all(15),
                                        decoration: BoxDecoration(
                                          color: dGreen,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Text(
                                          messages['unread'].toString(),
                                          style: GoogleFonts.inter(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      )
                                    : Container(),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          color: Colors.grey[400],
                          height: 0.5,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

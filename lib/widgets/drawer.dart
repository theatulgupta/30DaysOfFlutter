import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  final imageUrl =
      "https://www.google.com/url?sa=i&url=https%3A%2F%2Fin.linkedin.com%2Fin%2Fatul-kumar-gupta-0b9997203&psig=AOvVaw00KlUmvxLuYnA5hnQtBha-&ust=1676564223090000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCNClv8n2l_0CFQAAAAAdAAAAABAE";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: const [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                    currentAccountPicture: CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/dummy_user.png"),
                    ),
                    margin: EdgeInsets.zero,
                    accountName: Text("Atul"),
                    accountEmail: Text("atulgupta3058@gmail.com"))),
            ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.white),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              leading:
                  Icon(CupertinoIcons.profile_circled, color: Colors.white),
              title: Text(
                "Profile",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail, color: Colors.white),
              title: Text(
                "Contact us",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

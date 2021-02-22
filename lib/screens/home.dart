import 'package:flutter/material.dart';
import 'package:my_project/screens/drawer_screens/forget_password.dart';
import 'package:my_project/screens/drawer_screens/my_profile.dart';
import 'package:my_project/screens/tabbars_screens/add_ticket.dart';
import 'package:my_project/screens/tabbars_screens/tabbar_home.dart';
import 'package:my_project/screens/tabbars_screens/tickets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.purple,
            title: Text('Home'),
            bottom: TabBar(
              indicatorColor: Colors.purple,
              labelColor: Colors.white,
              tabs: [
                Tab(
                  text: 'Home',
                ),
                Tab(
                  text: 'Tickets',
                ),
                Tab(
                  text: 'Add Tickets',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              TabbarHome(),
              Tickets(),
              AddTicket(),
            ],
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  child: ListTile(
                    title: Text(
                      'Saad',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w800),
                    ),
                    subtitle: Text(
                      'First App Project',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    // leading: CircleAvatar(
                    //   child: Icon(Icons.perm_identity, color: Colors.white),
                    //   radius: 40,
                    // ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.purple,
                  ),
                ),
                ListTile(
                  title: Text('My Profile'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyProfile()),
                    );
                  },
                ),
                ListTile(
                  title: Text('Forget Password'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ForgetPassword()),
                    );
                  },
                ),
                // Divider(
                //   height: 64,
                //   thickness: 0.5,
                //   color: Colors.white.withOpacity(0.5),
                //   indent: 32,
                //   endIndent: 32,
                // ),
                ListTile(
                  title: Text('Logout'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

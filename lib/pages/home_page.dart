import 'package:app_componentes/pages/alert_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
        width: 240.0,
        color: Colors.grey[50],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home_outlined),
              trailing: Icon(Icons.arrow_forward_ios, size: 15.0),
            ),
            Divider(),
            ListTile(
              title: Text("Profile"),
              leading: Icon(Icons.person_outline),
              trailing: Icon(Icons.arrow_forward_ios, size: 15.0),
            ),
            Divider(),
            ListTile(
              title: Text("Settings"),
              leading: Icon(Icons.settings_outlined),
              trailing: Icon(Icons.arrow_forward_ios, size: 15.0),
            ),
            Divider(),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text("App componentes"),
        actions: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAaoX8VXVYqfLxB1GMaA36ohr0vMUzNL34Yg&usqp=CAU"),
          ),
          SizedBox(width: 15.0),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  /* transitionDuration: Duration(
                    seconds: 1,
                  ), */
                  //opaque: false,
                  pageBuilder: (context, _, __) => AlertPage(),
                  /* transitionsBuilder: (___, animation, ____, child) {
                    print("opacity $animation");
                    return FadeTransition(
                      opacity: animation,
                      child: RotationTransition(
                        turns: Tween<double>(begin: 0.5, end: 1.0)
                            .animate(animation),
                        child: child,
                      ),
                    );
                  }, */
                ),
              );
            },
            title: Text(
              "Alert",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: Icon(Icons.access_alarm),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 18.0,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }

  /* Widget getListTitle() {
    return ListTile(
      title: Text(
        "Gustavo",
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text("Quino Crispín"),
      leading: CircleAvatar(),
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 20.0,
        color: Colors.blue,
      ),
    );
  } */
}

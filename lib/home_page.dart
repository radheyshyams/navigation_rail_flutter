import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  //bool showNavigationBar = true;

  var list = [
    HomePage(),
    WalkPage(),
    LocationPage(),
    NotificationPage(),
    SettingsPage(),
    SearchPage(),
    HomePages(),
    WalkPages(),
    LocationPages(),
    NotificationPages(),
    SettingsPages(),
    SearchPages(),
    NotificationPages(),
    SettingsPages(),
    SearchPages()
  ];

  var title = [
    "HomePage",
    'WalkPage',
    'LocationPage',
    'NotificationPage',
    'SettingsPage',
    'SearchPage',
    "HomePages",
    'WalkPages',
    'LocationPages',
    'NotificationPages',
    'SettingsPages',
    'SearchPages',
    'NotificationPages',
    'SettingsPages',
    'SearchPages',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          title[_selectedIndex],
          style: const TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            // Navigate according to your own req.
            onPressed: () {
              /*setState(() {
                Navigator.pop(context);
              });*/
            }),
      ),
      body: Container(
        child: Row(
          children: <Widget>[
            LayoutBuilder(
              builder: (context, constraint) {
                return SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(minHeight: constraint.maxHeight),
                    child: IntrinsicHeight(
                      child: NavigationRail(
                        selectedIndex: _selectedIndex,
                        elevation: 10,
                        backgroundColor: Colors.white,
                        selectedIconTheme:
                        const IconThemeData(color: Colors.purple, size: 30),
                        unselectedIconTheme:
                        const IconThemeData(color: Colors.grey, size: 20),
                        selectedLabelTextStyle: const TextStyle(
                            color: Colors.purple, fontWeight: FontWeight.bold),
                        unselectedLabelTextStyle: const TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.normal),
                        onDestinationSelected: (int index) {
                          setState(() {
                            _selectedIndex = index;
                            //showNavigationBar = !showNavigationBar;
                          });
                        },
                        labelType: NavigationRailLabelType.none,
                        destinations:  [
                          NavigationRailDestination(
                            icon: Column(
                              children: const [
                                Icon(Icons.home),
                                Text(
                                  'Home',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                            selectedIcon: Column(
                              children: const [
                                Icon(Icons.home),
                                Text(
                                  'Home',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                            label: const Text(
                              'Home',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          NavigationRailDestination(
                            icon: Column(
                              children: const [
                                Icon(Icons.directions_walk),
                                Text(
                                  'Walk',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                            selectedIcon: Column(
                              children: const [
                                Icon(Icons.directions_walk),
                                Text(
                                  'Walk',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                            label: const Text('Walk'),
                          ),
                          const NavigationRailDestination(
                            icon: Icon(Icons.location_on),
                            selectedIcon: Icon(Icons.location_on),
                            label: Text('Location'),
                          ),
                          const NavigationRailDestination(
                            icon: Icon(Icons.notifications),
                            selectedIcon: Icon(Icons.notifications),
                            label: Text('Notifications'),
                          ),
                          const NavigationRailDestination(
                            icon: Icon(Icons.settings),
                            selectedIcon: Icon(Icons.settings),
                            label: Text('Settings'),
                          ),
                          const NavigationRailDestination(
                            icon: Icon(Icons.search),
                            selectedIcon: Icon(Icons.search),
                            label: Text('Search'),
                          ),
                          const NavigationRailDestination(
                            icon: Icon(Icons.home),
                            selectedIcon: Icon(Icons.home),
                            label: Text(
                              'Home',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          const NavigationRailDestination(
                            icon: Icon(Icons.directions_walk),
                            selectedIcon: Icon(Icons.directions_walk),
                            label: Text('Walk'),
                          ),
                          const NavigationRailDestination(
                            icon: Icon(Icons.location_on),
                            selectedIcon: Icon(Icons.location_on),
                            label: Text('Location'),
                          ),
                          const NavigationRailDestination(
                            icon: Icon(Icons.notifications),
                            selectedIcon: Icon(Icons.notifications),
                            label: Text('Notifications'),
                          ),
                          const NavigationRailDestination(
                            icon: Icon(Icons.settings),
                            selectedIcon: Icon(Icons.settings),
                            label: Text('Settings'),
                          ),
                          const NavigationRailDestination(
                            icon: Icon(Icons.search),
                            selectedIcon: Icon(Icons.search),
                            label: Text('Search'),
                          ),
                          const NavigationRailDestination(
                            icon: Icon(Icons.notifications),
                            selectedIcon: Icon(Icons.notifications),
                            label: Text('Notifications'),
                          ),
                          const NavigationRailDestination(
                            icon: Icon(Icons.settings),
                            selectedIcon: Icon(Icons.settings),
                            label: Text('Settings'),
                          ),
                          const NavigationRailDestination(
                            icon: Icon(Icons.search),
                            selectedIcon: Icon(Icons.search),
                            label: Text('Search'),
                          ),

                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            const VerticalDivider(thickness: 1, width: 1),
            // This is the main content.
            Expanded(
              child: Center(
                child: list[_selectedIndex],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: const Center(
        child: Text('Home Page',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0),),),
    );
  }
}

class WalkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue,
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 18.0),
              child: Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                color: Colors.orange,
                child: const Text('Hello Hi'),
              ),
            );
          },
        )
    );
  }
}

class LocationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: const Center(
        child: Text('Location Page',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0),),),
    );
  }
}

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: const Center(
        child: Text('Notification Page',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0),),),
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: const Center(
        child: Text('Settings Page',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0),),),
    );
  }
}

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      child: const Center(
        child: Text('Search Page',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0),),),
    );
  }
}

class HomePages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: const Center(
        child: Text('Home Page',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0),),),
    );
  }
}

class WalkPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: const Center(
        child: Text('Walk Page',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0),),),
    );
  }
}

class LocationPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: const Center(
        child: Text('Location Page',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0),),),
    );
  }
}

class NotificationPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: const Center(
        child: Text('Notification Page',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0),),),
    );
  }
}

class SettingsPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: const Center(
        child: Text('Settings Page',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0),),),
    );
  }
}

class SearchPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      child: const Center(
        child: Text('Search Page',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0),),),
    );
  }
}

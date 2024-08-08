import 'package:drawer_demo/provider/drawer_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/drawer_item.dart';

class DrawerNavagation extends StatelessWidget {
  const DrawerNavagation({super.key});

  @override
  Widget build(BuildContext context) {
    final drawer = context.watch<DrawerProvider>();
    return Drawer(
      child: ListView(
        children: [
          //DrawerHeader
          DrawerHeader(
            padding: const EdgeInsets.all(0),
                  decoration:
                      BoxDecoration(color: Theme.of(context).canvasColor),
                  child: UserAccountsDrawerHeader(
                    margin: const EdgeInsets.all(0),
                    decoration:
                        BoxDecoration(color: Theme.of(context).canvasColor),
                    accountName: Text(
                      "Rajeev Dubey",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    accountEmail: Text(
                      "Sr. Flutter Developer",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    currentAccountPicture: const CircleAvatar(
                      backgroundImage: AssetImage("assets/profile.jpg"),
                    ),
                  ),
          ),
          //DrawerItem
          DrawerItem(
            title: 'Dashboard',
            onTap: () {
              context.read<DrawerProvider>().onChangedIndex(0);
              Navigator.of(context).pop();
            },
            drawerIndex: 0,
            selectedIndex: drawer.selectedIndex,
          ),
          DrawerItem(
            title: 'Services',
            onTap: () {
              context.read<DrawerProvider>().onChangedIndex(1);
              Navigator.of(context).pop();
            },
            drawerIndex: 1,
            selectedIndex: drawer.selectedIndex,
          ),
          DrawerItem(
            title: 'Projects',
            onTap: () {
              context.read<DrawerProvider>().onChangedIndex(2);
              Navigator.of(context).pop();
            },
            drawerIndex: 2,
            selectedIndex: drawer.selectedIndex,
          ),
        ],
      ),
    );
  }
}

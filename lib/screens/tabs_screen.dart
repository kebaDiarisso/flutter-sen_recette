import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';
import '/screens/categories_screen.dart';
import '../models/meal.dart';
import 'favorites_screen.dart';


class TabsScreen extends StatefulWidget {
 late final List<Repas> favoriteMeals;
 TabsScreen(this.favoriteMeals);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
   late List<Map<String, Object>> _pages ;

  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [ 
   {
      'page': CategoriesScreen(), 
      'title': ' Categories',
    },
    {
      'page': FavoritesScreen(widget.favoriteMeals), 
      'title': 'Vos Favories',
    },

    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title'] as String),
      ),
      drawer: MainDrawer(),
      body: _pages[_selectedPageIndex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
          onTap: _selectPage,
          backgroundColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.white,
          selectedItemColor: Theme.of(context).colorScheme.secondary,
          currentIndex: _selectedPageIndex,
          // type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: const Icon(Icons.category),
              label: ('Categories'),
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: const Icon(Icons.star),
              label: ('Favorites'),
            ),
          ]),
    );
  }
}

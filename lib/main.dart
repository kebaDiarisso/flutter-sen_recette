import 'package:flutter/material.dart';
import './screens/meal_detail_screen.dart';
import './screens/category_meals_screen.dart';
import './screens/categories_screen.dart';
import 'models/meal.dart';
import 'screens/filters_screen.dart';
import 'dummy_data.dart';
import 'screens/tabs_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool>_filters = {
    'poisson': false,
    'viande': false,
    'poulet': false,
    'fruit de mer': false,
    'vegetarian': false,
  };
   List<Repas> _availableMeals = DUMMY_MEALS;
   List<Repas> _favoriteMeals = [];

  void _setFilters(Map<String, bool>filterData){
    setState(() {
      _filters = filterData;

      _availableMeals = DUMMY_MEALS.where((meal){
        if( _filters['poisson']!  && !meal.isPoisson){
          return false;
        }
        if( _filters['viande']!  && !meal.isViande){
          return false;
        }
        if( _filters['vegan']!  && !meal.FruitDeMer){
          return false;
        }
        if( _filters['poulet']!  && !meal.isPoulet){
          return false;
        }
        if( _filters['fruit de mer']!  && !meal.isPoulet){
          return false;
        }
        if( _filters['vegetarian']!  && !meal.isVegetarian){
          return false;
        }
        return true;
      }
      
      ).toList();
    });
  }

  void _toggleFavorite(String mealId){
   final existingIndex = _favoriteMeals.indexWhere((meal) => meal.id == mealId);
    if(existingIndex >= 0){
      setState(() {
        _favoriteMeals.removeAt(existingIndex);
      });
    } else {
      setState(() {
        _favoriteMeals.add(DUMMY_MEALS.firstWhere((meal) => meal.id == mealId),
      );
      });
    }
  }

  bool _isMealFavorite(String id)
{
  return _favoriteMeals.any((meal)=> meal.id == id);
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.orange,
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            headline1: const TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            headline2: const TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            headline3: const TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            )),
      ),
      // home: CategoriesScreen(),
      initialRoute: '/', 
      routes: {
        '/': (ctx) =>  TabsScreen(_favoriteMeals),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(_availableMeals),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(_toggleFavorite, _isMealFavorite),
        FilterScreen.routeName:(ctx) => FilterScreen(_filters,_setFilters),
      },
      onGenerateRoute: (settings){
        print(settings.arguments);
         return MaterialPageRoute(builder: (ctx) =>CategoriesScreen() );
      },
      onUnknownRoute: (settings){
        return MaterialPageRoute(builder: (ctx)=>CategoriesScreen(),);
      },
    );
  }
}
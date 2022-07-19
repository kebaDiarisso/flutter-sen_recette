import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = '/filters';
  final Function saveFilters;
  final Map<String, bool> currentFilters;

  FilterScreen(this.currentFilters, this.saveFilters);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool _poisson = false;
  bool _vegetarian = false;
  bool _viande = false;
  bool _poulet = false;
  bool _fruitDeMer = false;

  @override
  initState() {
    _poisson = widget.currentFilters['poisson']!;
    _viande = widget.currentFilters['viande']!;
    _vegetarian = widget.currentFilters['vegetarian']!;
    _poulet = widget.currentFilters['poulet']!;
    _fruitDeMer = widget.currentFilters['fruit de mer']!;
    super.initState();
  }

  Widget _buildSwitchListTile(String title, String description,
      bool currentValue, Function updateValue) {
    return SwitchListTile(
      title: Text(title),
      value: currentValue,
      subtitle: Text(description),
      onChanged: updateValue(context),
    );
  }

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vos Filtres'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              final selectedFilters = {
                'poisson': _poisson,
                'lactose': _viande,
                'vegan': _poulet,
                'fruit de mer':_fruitDeMer,
                'vegetarian': _vegetarian,
              };
              widget.saveFilters(selectedFilters);
            },
          )
        ],
      ),
      drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              '',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
               SwitchListTile(
                title: Text('Poisson'),
                value: _poisson,
                subtitle: Text('Uniquement du poisson'),
                onChanged: (newValue) {
                  setState(() {
                    _poisson = newValue;
                  });
                },
              ),
                SwitchListTile(
                title: Text('Vegetarian-free'),
                value: _vegetarian,
                subtitle: Text('Uniquement du Végétarien'),
                onChanged: (newValue) {
                  setState(() {
                    _vegetarian = newValue;
                  });
                },
              ),
               SwitchListTile(
                title: Text('Viande'),
                value: _viande,
                subtitle: Text('Uniquement de la viande'),
                onChanged: (newValue) {
                  setState(() {
                    _viande = newValue;
                  });
                },
              ),
                SwitchListTile(
                title: Text('Poulet'),
                value: _poulet,
                subtitle: Text('Uniquement du poulet'),
                onChanged: (newValue) {
                  setState(() {
                    _poisson = newValue;
                  });
                },
              ),
                SwitchListTile(
                title: Text('Fruit de mer'),
                value: _fruitDeMer,
                subtitle: Text('Uniquement des fruits de mer'),
                onChanged: (newValue) {
                  setState(() {
                    _fruitDeMer = newValue;
                  });
                },
              ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


/*
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Votre Filtre'),
        actions: [
          IconButton(
              onPressed: () {
                final selectedFilters = {
                  'poisson': _poisson,
                  'viande': _viande,
                  'vegetarian': _vegetarian,
                  'vegetarian': _vegetarian,
                  'vegetarian': _vegetarian,
                };
                widget.saveFilters(selectedFilters);
              },
              icon: const Icon(Icons.save)),
        ],
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Adjust your mealselection',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              SwitchListTile(
                title: Text('Poisson'),
                value: _poisson,
                subtitle: Text('Only include'),
                onChanged: (newValue) {
                  setState(() {
                    _poisson = newValue;
                  });
                },
              ),
              SwitchListTile(
                title: Text('Vegetarian'),
                value: _vegetarian,
                subtitle: Text('Only include'),
                onChanged: (newValue) {
                  setState(() {
                    _vegetarian = newValue;
                  });
                },
              ),
              SwitchListTile(
                title: Text('Viande'),
                value: _viande,
                subtitle: Text('Only include'),
                onChanged: (newValue) {
                  setState(() {
                    _viande = newValue;
                  });
                },
              ),
              SwitchListTile(
                title: Text('Poulet'),
                value: _poulet,
                subtitle: Text('Only include'),
                onChanged: (newValue) {
                  setState(() {
                    _viande = newValue;
                  });
                },
              ),
              SwitchListTile(
                title: Text('Fruit de Mer'),
                value: _fruitDeMer,
                subtitle: Text('Only include'),
                onChanged: (newValue) {
                  setState(() {
                    _viande = newValue;
                  });
                },
              ),
              _buildSwitchListTile(
                'Vegetarian',
                'Only include vegetarian meals.',
                _vegetarian,
                (newValue) {
                  setState(
                    () {
                      _vegetarian = newValue;
                    },
                  );
                },
              ),
            ],
          ))
        ],
      ),
    );
  }
}
*/
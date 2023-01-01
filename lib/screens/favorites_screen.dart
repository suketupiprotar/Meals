import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  bool _glutenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactoseFree = false;

  Widget _buildSwitchListTile(String title, String description,
      bool currentvalue, Function(bool) updateValue) {
    return SwitchListTile(
      title: Text(title),
      value: currentvalue,
      subtitle: Text(description),
      onChanged : updateValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(20),
          child: Text(
            'Adjust your meal selection.',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              _buildSwitchListTile(
                'Gluten-Free',
                'Only Include Gluten Free Meals.',
                _glutenFree,
              
                (bool  newValue) {
                  setState(() {
                    _glutenFree = newValue;
                    
                  });
                },
              ),
               _buildSwitchListTile(
                'Lactose-Free',
                'Only Include lactose Free Meals.',
                _lactoseFree,
                (bool newValue) {
                  setState(() {
                    _lactoseFree = newValue;
                  });
                },
              ),
               _buildSwitchListTile(
                'Vegetarian',
                'Only Include Vegetarian Free Meals.',
                _vegetarian,
                (bool newValue) {
                  setState(() {
                    _vegetarian = newValue;
                  });
                },
              ),
               _buildSwitchListTile(
                'Vegan',
                'Only Include Vegan Meals.',
                _vegan,
                (bool newValue) {
                  setState(() {
                    _vegan = newValue;
                  });
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}

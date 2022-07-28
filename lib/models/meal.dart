import 'package:flutter/foundation.dart';

enum Complexity {
  Simple,
  Moyen,
  Complique,
}

class Repas {
  final String id;
  final List<String> categories;
  final String title;
  final List<String> recette;
  final String imageUrl;
  final String imageUrlUn;
  final String imageUrlDeux;
  final String imageUrlTrois;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final int prix;
  final Complexity complexity;

  final bool isPoisson;
  final bool isViande;
  final bool isPoulet;
  final bool fruitdemer;
  final bool isVegetarian;

  const Repas({
    required this.id,
    required this.categories,
    required this.title,
    required this.recette,
    required this.imageUrl,
    required this.imageUrlUn,
    required this.imageUrlDeux,
    required this.imageUrlTrois,
    required this.ingredients,
    required this.steps,
    required this.duration,
    required this.prix,
    required this.complexity,
    required this.isPoulet,
    required this.isPoisson,
    required this.isViande,
    required this.fruitdemer,
    required this.isVegetarian,
  });
}

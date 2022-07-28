import 'package:flutter/material.dart';

import './models/category.dart';
import 'models/meal.dart';

const DUMMY_CATEGORIES = [
  Category(
    id: 'C1',
    title: 'Petit Déjeuner',
    image:
        "https://cdn.futura-sciences.com/buildsv6/images/wide1920/0/7/6/076c3fe209_117550_petit-dej-ideal.jpg",
  ),
  Category(
    id: 'C2',
    title: 'Repas de Midi',
    image: "https://i.ytimg.com/vi/4J_BkH-d_hI/maxresdefault.jpg",
  ),
  Category(
    id: 'C3',
    title: 'Diner',
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsd9u0f4HQikxNGp2zrjVAn0ucwM1bN1Z9sNREYUfir5BNXF1iWcs8_CIPWhR4fwmadbY&usqp=CAU",
  ),
  Category(
    id: 'C4',
    title: 'Repas de Fête',
    image:
        "http://img.over-blog-kiwi.com/3/04/83/24/20190102/ob_e1658f_img-20190102-123645-901.jpg",
  ),
  Category(
    id: 'C5',
    title: 'Lakh',
    image:
        "https://mabouffeblog.files.wordpress.com/2017/09/wp-image-499592806.jpg?w=1000&h=750",
  ),
  Category(
    id: 'C6',
    title: "Amuse-Bouches",
    image:
        "https://images.coinafrique.com/2848788_uploaded_image1_1608726163.jpg",
  ),
  Category(
    id: 'C7',
    title: "Desserts",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsjvztnEpkqvnFHnEzcpxNl6-5jvmH4vaKEw&usqp=CAU",
  ),
  Category(
    id: 'C8',
    title: "Produits Exotiques",
    image:
        "http://senecuisine.com/wp-content/uploads/2011/05/Sauce-tamarin.jpg",
  ),
  Category(
    id: 'C9',
    title: 'Boisson',
    image: "https://pbs.twimg.com/media/FM7XR7rXIAYKs8Q?format=jpg&name=large",
  ),
  Category(
    id: 'C10',
    title: 'Autres',
    image:
        "https://image.shutterstock.com/z/stock-photo-senegalese-african-cuisine-traditional-assorted-asia-dishes-top-view-1584650518.jpg",
  ),
];

/***************************************************************************************************************************************************/
/***************************************************************************************************************************************************/
/***************************************************************************************************************************************************/

const DUMMY_MEALS = [
  Repas(
      id: 'R1',
      categories: [
        'C2',
      ],
      title: 'Yassa Poulet',
      imageUrl:
          'https://lacuisinedemoussoufood.files.wordpress.com/2021/01/img_4218.jpeg?w=768',
      imageUrlUn:
          'https://villamaasai.fr/wp-content/uploads/2019/08/Yassa-Boeuf-Villa-Massai.jpg',
      imageUrlDeux:
          'https://royalsenegal.com/wp-content/uploads/2020/08/YassaGuinar.jpg',
      imageUrlTrois:
          'https://lesgourmandisesdekarelle.com/wp-content/uploads/2016/08/Yassa-4-1024x683.jpg',
      ingredients: [
        '6 cuisses de poulets fermiers',
        '2 gros oignons',
        '2 citrons jaunes',
        '2 citrons jaunes',
        '1 cuillère à soupe de moutarde forte',
        '1 clou de girofle',
        ' 1 jus de citron jaune',
        '1 pincée de citronnelle en poudre',
        '1 pincée de piment de la jamaïque',
        '20 g de beurre',
        '3 cuillère à soupe de moutarde forte',
        '4 gousses d\'ail',
        'sel, poivre',
      ],
      recette: [
        'Pour 6 Personnes',
        'Durée: 2h',
        'Cout: moyen',
      ],
      complexity: Complexity.Simple,
      duration: 2,
      isPoisson: false,
      isPoulet: false,
      fruitdemer: false,
      isVegetarian: false,
      isViande: false,
      prix: 1800,
      steps: [
        'Éplucher et émincer les oignons. Laver soigneusement les citrons verts. Les couper en 2 et les presser pour obtenir environ 20 cl de jus. S\'il ne sont pas assez juteux, on peut utiliser du jus de citron vert en bouteille.',
        'Couper les cuisses de poulet en 2 et piquer chaque morceau 4 ou 5 fois avec la pointe d\'un couteau (cela permettra à la marinade de mieux pénétrer les chairs). Badigeonner chaque morceau d\'un peu d\'huile d\'olive.',
        'Prendre un grand sac congélation. Y mélanger les oignons émincés, les morceaux de poulet, le jus des citrons et les peaux de 5 ou 6 citrons (pour accentuer le parfum). On peut ajouter selon les goûts une dizaine de piments oiseaux (non percés si l\'on souhaite un yassa doux, découpés si on aime le "feu" des graines).',
        'Doubler le sac pour plus de sécurité, enlever le plus d\'air possible et fermer. Poser le tout dans un récipient creux et mettre au frais au moins 12 heures.',
        'Ôter les peaux de citrons de la marinade et les jeter. Récupérer les morceaux de poulet et les mettre à dorer dans une sauteuse, sans matière grasse. Pendant ce temps égoutter les oignons. Lorsque le poulet est doré de tous cotés, le retirer et mettre les oignons à compoter doucement pendant 10 minutes en remuant fréquemment.',
        'Pour finir Lorsque les oignons ont "fondus", ajouter le poulet, la marinade et éventuellement les piments. Laisser mijoter à couvert environ 30 minutes.',
      ]),
  Repas(
      id: 'R2',
      categories: [
        'C2',
      ],
      title: 'Thieboudieune',
      imageUrl:
          'https://img-3.journaldesfemmes.fr/5NWRDxe-9QRNFPVj2epSQdV7BOw=/750x500/smart/1091afb54c384462b8e7b4ac72067b12/recipe-jdf/337089.jpg',
      imageUrlUn:
          'https://villamaasai.fr/wp-content/uploads/2019/08/Yassa-Boeuf-Villa-Massai.jpg',
      imageUrlDeux:
          'https://royalsenegal.com/wp-content/uploads/2020/08/YassaGuinar.jpg',
      imageUrlTrois:
          'https://lesgourmandisesdekarelle.com/wp-content/uploads/2016/08/Yassa-4-1024x683.jpg',
      ingredients: [
        '1 kilo de poisson frais (du colin ou un poisson maigre tels que merlu, aiglefin, dorade)',
        '1/2 chou vert',
        '100 g de tomates concentrées',
        '200 g de manioc (en morceaux)',
        '200 g de carottes',
        '200 g de navets',
        '2 oignons',
        '200 g d’aubergines',
        '2 piments rouges',
        '1 kg de riz',
        'huile d’arachide',
        'persil',
      ],
      recette: [
        'Pour 4 Personnes',
        'Durée: 1h45',
        'Cout: facile',
      ],
      complexity: Complexity.Simple,
      duration: 2,
      isPoisson: true,
      isPoulet: false,
      fruitdemer: false,
      isVegetarian: false,
      isViande: false,
      prix: 1500,
      steps: [
        'Découper le poisson en morceaux de 100 g environ. Préparer la farce en pilant au mortier 1 oignon, le persil et 1 piment. Assaisonner de sel ; piquer chaque morceau de poisson et introduire une petite quantité de cette farce.',
        'Dans une cocotte, faire chauffer l’huile et bien dorer les morceaux de poisson, mettre dans la cocotte les oignons émincés et faire blondir doucement, ajouter le concentré de tomate avec un bol d’eau. Remuer et faire cuire pendant 15 minutes à feu moyen. Dès que l’huile remonte, ajouter un litre d’eau avec deux cuillères à soupe de sel.',
        'Ajouter également un piment dans la cocotte pour donner du goût à la sauce. Dès que l’eau bout, ajouter le chou, les carottes et le manioc. Laisser mijoter 40 minutes. Ajouter les navets et l’aubergine. Laisser mijoter 20 minutes. Ensuite, retirer les légumes et le poisson de la cocotte de telle sorte qu’il ne reste que la sauce.',
        'Mettre le riz dans la sauce, diminuer le feu, recouvrir la cocotte et laisser cuire le riz pendant 40 minutes',
      ]),
  /********************* */
  Repas(
      id: 'R9',
      categories: [
        'C9',
      ],
      title: 'Gelée de bissap (fleurs d\'hibiscus)',
      imageUrl:
          'https://img-3.journaldesfemmes.fr/4txli1wUQZQunlmN1ZY9-Xqxo2o=/750x500/smart/7da02276af344908bd46605da746eeb2/recipe-jdf/320699.jpg',
      imageUrlUn:
          'https://villamaasai.fr/wp-content/uploads/2019/08/Yassa-Boeuf-Villa-Massai.jpg',
      imageUrlDeux:
          'https://royalsenegal.com/wp-content/uploads/2020/08/YassaGuinar.jpg',
      imageUrlTrois:
          'https://lesgourmandisesdekarelle.com/wp-content/uploads/2016/08/Yassa-4-1024x683.jpg',
      ingredients: [
        'Pour environ 2 pots de 450 g :',
        '100 g de fleurs d\'hibiscus séchées (en épicerie exotique)',
        '1 l d\'eau',
        '1 sachet de Vitpris',
        'sucre semoule',
      ],
      recette: [
        'Pour 4 Personnes',
        'Durée: 35min',
        'Cout: facile',
      ],
      complexity: Complexity.Simple,
      duration: 2,
      isPoisson: false,
      isPoulet: false,
      fruitdemer: false,
      isVegetarian: false,
      isViande: false,
      prix: 300,
      steps: [
        'Rincer plusieurs fois les fleurs d\'hibiscus à l\'eau froide pour les débarrasser d\'éventuels résidus de sable ou de terre. Les plonger dans 1 litre d\'eau, porter à ébullition et laisser bouillir à couvert environ 15 minutes. On obtient une décoction très foncée.',
        'Filtrer ce jus dans une passoire fine éventuellement doublée d\'une étamine (vivement conseillé si le bissap est très "sableux" comme ici en Afrique).',
        'Peser le jus obtenu : en général on obtient environ 500 à 600 g de jus. Préparer le même poids de sucre. Si on aime les gelées moins sucrées on peut réduire sans problème à 450 g de sucre pour 600 g de jus. Attention cependant à ne pas diminuer plus car le bissap est par nature très acide.',
        'Prélever 2 cuillères à soupe de sucre et mélanger au sachet de Vitpris. Verser dans le jus de bissap, mélanger au fouet. Porter à ébullition et laisser bouillir 1 minute.',
        'Ajouter le reste du sucre, porter à nouveau à ébullition. Laisser bouillir 3 minutes, pas plus, en écumant les impuretés.',
        'Mettre en pots et laisser refroidir, pots retournés. La prise se fera progressivement dans les heures suivantes. Attendre si possible quelques jours avant de consommer.',
      ]),
  /*********************************** */
  Repas(
      id: 'R6',
      categories: [
        'C6',
      ],
      title: 'Pastels',
      imageUrl:
          'https://img-3.journaldesfemmes.fr/yjs0LqRKikWwhNNlDsiEap0ZtWQ=/750x500/smart/5baff8939ebb4d56844f3aa24edbbb81/recipe-jdf/341644.jpg',
      imageUrlUn:
          'https://villamaasai.fr/wp-content/uploads/2019/08/Yassa-Boeuf-Villa-Massai.jpg',
      imageUrlDeux:
          'https://royalsenegal.com/wp-content/uploads/2020/08/YassaGuinar.jpg',
      imageUrlTrois:
          'https://lesgourmandisesdekarelle.com/wp-content/uploads/2016/08/Yassa-4-1024x683.jpg',
      ingredients: [
        '1 pâte brisée',
        '1 dorade rose ou 1 mulet',
        '1/2 piment, 1 oignon, 1 gousse d\'ail,sel et poivre',
        '1 toute petite boîte de concentré de tomate',
        '2 cuillères à soupe d\'huile',
        '1/2 piment mixé',
        '1 cube de bouillon déshydraté',
        '1 cuillère à soupe d\'herbes de Provence',
        '20 cl d\'eau',
      ],
      recette: [
        'Pour 4 Personnes',
        'Durée: 1h',
        'Cout: facile',
      ],
      complexity: Complexity.Simple,
      duration: 2,
      isPoisson: false,
      isPoulet: false,
      fruitdemer: false,
      isVegetarian: false,
      isViande: false,
      prix: 300,
      steps: [
        'Pour le poisson, enlever la peau et ôter la chair. Mixer la chair avec le persil, l\'oignon, le piment, l\'ail, le sel et le poivre. Faire revenir le tout.',
        'Etaler la pâte à l\'aide d\'un rouleau. Couper des ronds de pâte de 10 cm de diamètre ou des carrés de pâte de 10 x 10 cm.',
        'Remplir de farce les ronds ou les carrés de pâte découpés. Ne pas trop les remplir car ils risqueraient de craquer lors de la cuisson, il doit rester de la pâte tout autour. Plier en deux. Refermer les bords à l\'aide d\'une fouchette.',
        'Plonger les pastels réalisés dans la friture jusqu\'à ce qu\'ils deviennent légèrement dorés.',
        'Les égoutter et les déposer dans un plat préalablement tapissé avec du papier absorbant.',
        'Pour la sauce, faire verser le concentré de tomates avec l\'huile, le piment mixé dans une casserole à feu doux, ajouter 20 cl d\'eau, les herbes de Provence, le cube et remuer le tout. Laisser mijoter 10 minutes.',
      ]),
  Repas(
      id: 'R3',
      categories: [
        'C3',
      ],
      title: 'Thiéré bassi salté',
      imageUrl:
          'https://dumplingsandmore.fr/wp-content/uploads/2020/12/2630b2_058e2e159dbb4119a07b79a902058417-mv2-150x150.jpg?ezimgfmt=ng:webp/ngcb46',
      imageUrlUn:
          'https://villamaasai.fr/wp-content/uploads/2019/08/Yassa-Boeuf-Villa-Massai.jpg',
      imageUrlDeux:
          'https://royalsenegal.com/wp-content/uploads/2020/08/YassaGuinar.jpg',
      imageUrlTrois:
          'https://lesgourmandisesdekarelle.com/wp-content/uploads/2016/08/Yassa-4-1024x683.jpg',
      ingredients: [
        '250 g de couscous de mil',
        '100 g de viande hachée',
        '50 g de haricots blancs cuits',
        '50 g de pois-chiches cuits',
        '20 g de raisins secs',
        '10 g de lalo (liant à base de baobab) et 12 cl d’eau',
        '300 g de viande de bœuf',
        '5 cl d’huile végétale',
        '1 oignon moyens râpés',
        '1 petit poivron vert coupé grossièrement',
        '100 g de concentré de tomates',
        '10 cl de tomates râpées',
        '1 courge coupée gros morceaux',
        '4 morceaux de manioc',
        '1 carotte épluchée et coupée en 4',
        '1 navet épluché et coupé en 4',
        '1 patate douce épluchée et coupée en morceaux',
        '6 gousses d’ail écrasées',
        '1 piment rouge',
        '½ botte d’oignon nouveau',
        'Sel et poivre'
      ],
      recette: [
        'Pour 4 Personnes',
        'Durée: 1h',
        'Cout: facile',
        'Calories: 300kcal',
      ],
      complexity: Complexity.Simple,
      duration: 2,
      isPoisson: false,
      isPoulet: true,
      fruitdemer: false,
      isVegetarian: false,
      isViande: true,
      prix: 300,
      steps: [
        'Faire mariner la viande et le poulet pendant 30 minutes avec 3 gousses d’ail, du poivre et du sel.',
        'Dans une marmite chaude huilée, faire dorer la viande et le poulet marinés.',
        'Dissoudre le concentré de tomates dans de l’eau et verser dans la marmite. Ajouter la courge, le manioc, la carotte, le navet, la patate douce et couvrir avec de l’eau.',
        'Mixer l’oignon, l’oignon nouveau, les 3 gousses d’ail restantes, le poivron, le piment, du sel et du poivre jusqu’à obtenir une pâte homogène. Ajouter à la sauce. Ajouter ensuite la tomate râpée. Laisser mijoter environ une heure, ou jusqu’à ce que les viandes et les légumes cuisent',
        'Une fois cuits, retirer les viandes et les légumes et laisser réduire la sauce à feu doux pendant 3 heures.',
        'Dans un grand saladier, disposer le couscous de mil et arroser d’eau bouillante. Sabler puis réserver jusqu’à ce que le couscous absorbe toute l’eau. Cuire à la vapeur à l’aide d’un couscoussier pendant 20 minutes.',
        'Entre temps, délayer le lalo dans 12 cl d’eau et battre jusqu’à obtenir une préparation blanche et épaisse. Ajouter au couscous et bien mélanger. Laisser cuire à la vapeur encore 20 min.',
        'Préparer des petites boulettes de viande haché. Cuire dans une huile chaude et réserver.',
        'Ajouter les pois-chiches, les haricots blancs, les raisins secs et les boulettes de viande hachée au couscous. Mouiller le couscous avec une louche de sauce à la viande et aux légumes et bien mélanger.',
      ]),

      Repas(
      id: 'R9',
      categories: [
        'C9',
      ],
      title: 'Jus de tamarin',
      imageUrl:
          'https://resize.elle.fr/portrait_480_webp/var/plain_site/storage/images/elle-a-table/recettes-de-cuisine/jus-de-tamarin-2079792/22102492-1-fre-FR/Jus-de-tamarin.jpg',
      imageUrlUn:
          'https://villamaasai.fr/wp-content/uploads/2019/08/Yassa-Boeuf-Villa-Massai.jpg',
      imageUrlDeux:
          'https://royalsenegal.com/wp-content/uploads/2020/08/YassaGuinar.jpg',
      imageUrlTrois:
          'https://lesgourmandisesdekarelle.com/wp-content/uploads/2016/08/Yassa-4-1024x683.jpg',
      ingredients: [
        'des tamarins',
        '100 g de sucre',
        'eau',
        'des glaçons',
      ],
      recette: [
        'Pour 4 Personnes',
        'Durée: 15min',
        'Cout: facile',
      ],
      complexity: Complexity.Simple,
      duration: 2,
      isPoisson: false,
      isPoulet: false,
      fruitdemer: false,
      isVegetarian: false,
      isViande: false,
      prix: 300,
      steps: [
        'Prenez un récipient, un saladier et faites couler 1 litre d\'eau.',
        'Versez dans le saladier, vos tamarins et faites les tremper afin qu\'ils se gorgent d\'eau et perdent leur côté amer',
        'Versez dans un saladier et malaxez le tout afin de créer le jus',
        'Egouttez les et versez directement du sucre tout en remuant le récipient.',
        'Sortez vos glaçons, mettez la quantité souhaitée dans votre verre et versez le jus',
        'Voilà vous pouvez savourez votre jus de tamarin !',
      ]),

      // Repas(
      // id: 'R1',
      // categories: [
      //   'C2',
      // ],
      // title: 'mafé',
      // imageUrl:
      //     'https://i.ytimg.com/vi/OexilpHWbo4/mqdefault.jpg',
      // imageUrlUn:
      //     'https://villamaasai.fr/wp-content/uploads/2019/08/Yassa-Boeuf-Villa-Massai.jpg',
      // imageUrlDeux:
      //     'https://royalsenegal.com/wp-content/uploads/2020/08/YassaGuinar.jpg',
      // imageUrlTrois:
      //     'https://lesgourmandisesdekarelle.com/wp-content/uploads/2016/08/Yassa-4-1024x683.jpg',
      // ingredients: [
      //   'des tamarins',
      //   '100 g de sucre',
      //   'eau',
      //   'des glaçons',
      // ],
      // recette: [
      //   'Pour 4 Personnes',
      //   'Durée: 15min',
      //   'Cout: facile',
      // ],
      // complexity: Complexity.Simple,
      // duration: 2,
      // isPoisson: false,
      // isPoulet: false,
      // fruitdemer: false,
      // isVegetarian: false,
      // isViande: false,
      // prix: 300,
      // steps: [
      //   'Prenez un récipient, un saladier et faites couler 1 litre d\'eau.',
      //   'Versez dans le saladier, vos tamarins et faites les tremper afin qu\'ils se gorgent d\'eau et perdent leur côté amer',
      //   'Versez dans un saladier et malaxez le tout afin de créer le jus',
      //   'Egouttez les et versez directement du sucre tout en remuant le récipient.',
      //   'Sortez vos glaçons, mettez la quantité souhaitée dans votre verre et versez le jus',
      //   'Voilà vous pouvez savourez votre jus de tamarin !',
      // ]),
];

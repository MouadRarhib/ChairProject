import 'package:ecomapp/App/data/models/product_model.dart';
import 'package:ecomapp/utils/constants.dart';

class DummyHelper {
  const DummyHelper._();

  static List<ProductModel> products = [
    ProductModel(
        id: 2,
        image: Constants.modernwingback,
        name: "Modernwing back",
        quantity: 0,
        price: 120,
        description:
            "This Sofa chair can be stained or painted in a colour of your choice and upholstered in a fabric to suit your personal taste. The Sinuoso Bespoke Upholstered Modern Wingback Barrel Chair is oh so sinuous! A modern day chair that combines two popular chair styles, the wing chair and the barrel chair. This armchair illustrates the Millmax signature style of show-wood surrounding the upholstery. The 'wings' of the chair stretch down to the armrests and continue in one fluid movement to the legs, whilst the semi-circular 'barrel' back continues the sinuous sexy lines of this designer armchair.",
        stars: 4.5,
        reviews: 1200,
        sold: 30),
    ProductModel(
        id: 3,
        image: Constants.occasionalchair,
        name: "Occasional chair",
        quantity: 0,
        price: 120,
        description:
            "This occasional chair is the definition of luxurious lounging with premium comfort and expertly crafted hardwood timber frame showcasing the unique grains and tones of the timber.",
        stars: 4.9,
        reviews: 1600,
        sold: 15),
    ProductModel(
        id: 3,
        image: Constants.velvetwingback,
        name: "Velvetwing back",
        quantity: 0,
        price: 200,
        description:
            "Introducing Jezebel, the alluring wingback chair brought to you by Inspire Me Home Decor and TOV. Boasting a tall back, elegantly curved silhouette, button tufting and piped stitching design, we’ve given this classic style a modern twist. Available in multiple color options.",
        stars: 4.8,
        reviews: 1200,
        sold: 20),
    ProductModel(
        id: 1,
        image: Constants.lowsonchair,
        name: "Lowsonchair",
        quantity: 0,
        price: 150,
        description:
            "The Alana collection by Jennifer Taylor Home is the perfect addition to any living space looking to add a bit of a traditional flair. The fabric selected for the collection features Polyester blends engineered for a long life. The wood frames are made from kiln dried birch wood which provides exceptional support and stability.",
        stars: 4,
        reviews: 1030,
        sold: 25),
    ProductModel(
        id: 3,
        image: Constants.wingbackchair,
        name: "Wingback chair",
        quantity: 0,
        price: 250,
        description:
            "Wingback is Tom Dixon's much appreciated armchair with its expressive sweeping curves that act as a sculptural intervention. This armchair is upholstered using Kvadrat's Melange Nap 0791 wool fabric and features Natural Oak legs. The wings provide convenient acoustic protection for mobile phone use and a headrest for quick snoozes.",
        stars: 4.7,
        reviews: 1500,
        sold: 15),
    ProductModel(
        id: 3,
        image: Constants.wingbackLounge,
        name: "Wingback Lounge",
        quantity: 0,
        price: 199,
        description:
            "Danish design and mid-century inspiration come together in our striking Powell swivel chair. One continuous line flows to create the rounded armrests and exaggerated wingback for an expressive update on a classic style. Walnut-finished birch legs splay an angled swivel base that complements the matte look of the soft, almost suede-like leather upholstery. To keep things looking neat and tidy, the comfy pillow seat cushion clips to the back of the chair.",
        stars: 4.2,
        reviews: 1500,
        sold: 30),
  ];
}

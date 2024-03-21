// Define the Animal class representing generic animal characteristics.
//parent class/Base class/Super class
class Animal {
  int legs; // Number of legs of the animal.
  String teeth; // Type of teeth of the animal.

// Constructor to initialize legs and teeth of the animal.
  Animal(this.legs, this.teeth);

// Method to provide the type of animal based on its teeth.
  void animalType() {
    if (teeth == 'Sharp') {
      print('This is a Carnivorous animal');
    } else {
      print('This is a herbivorous animal');
    }
  }
}

// Inheritance begins
// Define a subclass Cow extending from the Animal class.
class Cow extends Animal {
  String name; // Name of the Cow.

  // Constructor to initialize the Cow's name, legs, and teeth.
  Cow(this.name, int legs, String teeth) : super(legs, teeth);
  // Super means the parent will give the legs and teeth
// Method to display information about the cow.
  void displayCowInfo() {
    print('This is a $name with $legs legs and has $teeth');
  }
}

// Define another subclass Lion extending from the Animal class.
class Lion extends Animal {
  String name;

  // Constructor to initialize the lion's name, legs, and teeth.
  Lion(this.name, int legs, String teeth) : super(legs, teeth);

  // Method to display information about the lion.
  void displayLionInfo() {
    print('This is a $name with $legs legs and has $teeth teeth');
  }
}

// Main function to demonstrate the usage of the Animal, Cow, and Lion classes.
void main() {
  // Create an instance of Cow and Lion.
  var myCow = Cow('Cow', 4, 'flat molars');
  var myLion = Lion('Lion', 4, 'Sharp');

// Display information about the cow and lion as well as demonstrate the animalType method for both animals.
  myCow.displayCowInfo();
  myCow.animalType();
  myLion.displayLionInfo();
  myLion.animalType();
}

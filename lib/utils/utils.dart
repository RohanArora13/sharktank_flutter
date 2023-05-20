import 'package:flutter/material.dart';

class Utils {
  static const Color lightblue = Color.fromARGB(255, 211, 223, 250);

  // card color based on industry
  Color cardColor(String industry) {
    late Color currentColore;
    switch (industry) {
      case "Education":
        currentColore = Color.fromARGB(255, 211, 223, 250);
        break;
      case "Food":
        currentColore = Color.fromARGB(255, 211, 243, 250);
        break;
      case "Vehicles/Electrical Vehicles":
        currentColore = Color.fromARGB(255, 211, 245, 250);
        break;
      case "Beauty/Fashion":
        currentColore = Color.fromARGB(255, 250, 211, 243);
        break;
      case "Agriculture":
        currentColore = Color.fromARGB(255, 211, 250, 226);
        break;
      case "Medical/Health":
        currentColore = Color.fromARGB(255, 211, 250, 227);
        break;
      case "Manufacturing":
        currentColore = Color.fromARGB(255, 241, 250, 211);
        break;
      case "Technology/Software":
        currentColore = Color.fromARGB(255, 211, 223, 250);
        break;
      case "Electronics":
        currentColore = Color.fromARGB(255, 211, 250, 219);
        break;
      case "Animal/Pets":
        currentColore = Color.fromARGB(255, 221, 211, 250);
        break;
      case "Services":
        currentColore = Color.fromARGB(255, 250, 211, 238);
        break;
      case "Hardware":
        currentColore = Color.fromARGB(255, 250, 227, 211);
        break;
      case "Sports":
        currentColore = Color.fromARGB(255, 245, 250, 211);
        break;
      case "Liquor/Beverages":
        currentColore = Color.fromARGB(255, 245, 211, 250);
        break;
      case "Entertainment":
        currentColore = Color.fromARGB(255, 211, 245, 250);
        break;
      case "Furnishing/Household":
        currentColore = Color.fromARGB(255, 230, 250, 211);
        break;
      default:
        {
          currentColore = Color.fromARGB(255, 250, 211, 211);
          break;
        }
    }
    return currentColore;
  }

  String cardImage(String industry) {
    late String img;

    switch (industry) {
      case "Education":
        img = "education.png";
        break;
      case "Food":
        img = "food.png";
        break;
      case "Vehicles/Electrical Vehicles":
        img = "electric-car.png";
        break;
      case "Beauty/Fashion":
        img = "beauty_fashion.png";
        break;
      case "Agriculture":
        img = "agriculture.png";
        break;
      case "Medical/Health":
        img = "medical.png";
        break;
      case "Manufacturing":
        img = "manufacturing.png";
        break;
      case "Technology/Software":
        img = "technology.png";
        break;
      case "Electronics":
        img = "hardware.png";
        break;
      case "Animal/Pets":
        img = "animal.png";
        break;
      case "Services":
        img = "services.png";
        break;
      case "Hardware":
        img = "hardware.png";
        break;
      case "Sports":
        img = "sports.png";
        break;
      case "Liquor/Beverages":
        img = "beverages.png";
        break;
      case "Entertainment":
        img = "entertainment.png";
        break;
      case "Furnishing/Household":
        img = "household.png";
        break;
      default:
        {
          img = "food.png";
          break;
        }
    }

    return "assets/$img";
  }
}
// Food
// Vehicles/Electrical Vehicles
// Beauty/Fashion
// Education
// Agriculture
// Medical/Health
// Manufacturing
// Technology/Software
// Electronics
// Animal/Pets
// Services
// Hardware
// Sports
// Liquor/Beverages
// Entertainment
// Furnishing/Household
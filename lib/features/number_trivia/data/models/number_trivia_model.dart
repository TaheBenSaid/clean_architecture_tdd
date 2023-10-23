import 'package:flutter/cupertino.dart';

import '../../domain/entities/number_trivia.dart';

class NumberTriviaModel extends NumberTrivia {
  NumberTriviaModel({
    required String text, // The trivia text.
    required int number, // The trivia number.
  }) : super(text: text, number: number);
  // Constructor for creating a NumberTriviaModel instance.

  factory NumberTriviaModel.fromJson(Map<String, dynamic> json) {
    // Factory method to create a NumberTriviaModel from a JSON map.
    return NumberTriviaModel(
      text: json['text'], // Extracting 'text' from the JSON.
      number: (json['number'] as num)
          .toInt(), // Extracting 'number' and converting it to an integer.
    );
  }

  Map<String, dynamic> toJson() {
    // A method to convert a NumberTriviaModel instance to a JSON map.
    return {
      'text': text, // Storing the 'text' property in the map.
      'number': number, // Storing the 'number' property in the map.
    };
  }
}

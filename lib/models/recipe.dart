class Recipe {
  final String recipeName;
  final List<String> emojiRatings;

  Recipe({
    required this.recipeName,
    required this.emojiRatings,
  });

   Map<String, int> emojiToValue = {
  "☹️": 1,
  "😐": 2,
  "😊": 3,
  "😄": 4,
};

}


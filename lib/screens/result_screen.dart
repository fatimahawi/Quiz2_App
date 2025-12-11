import 'package:flutter/material.dart';
import '../widgets/recipe_item.dart';
import '../data/recipes.dart';

class RecipesScreen extends StatelessWidget {
  final void Function(int, String) onSelectRating;
  final VoidCallback onSubmit;

  const RecipesScreen({
    super.key,
    required this.onSelectRating,
    required this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: Column(
          children: [
            ...recipes.asMap().entries.map((entry) {
              int index = entry.key;
              var recipe = entry.value;

              return RecipeItem(
                recipe: recipe,
                index: index,
                onSelectRating: onSelectRating,
              );
            }),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: onSubmit,
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}

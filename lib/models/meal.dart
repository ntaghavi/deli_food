class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final int duration;
  final List<String> ingredients;
  final List<String> steps;

  const Meal({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.duration,
    required this.ingredients,
    required this.steps,
  });
}

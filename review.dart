import 'dart:io';

List<String> destinations = [
  "Paris", "Tóquio", "Nova York", "Roma", "Londres",
  "Rio de Janeiro", "Bahamas", "Dubai", "Cidade do Cabo", "São Paulo"
];

List<Map<String, dynamic>> reviews = [];

void addReview(String destination, int stars, String comment) {
  reviews.add({"destino": destination, "estrelas": stars, "comentario": comment});
}

void showReviews() {
print("\n Avaliações de Destinos:");
    for (var review in reviews) {
      print("- ${review["destino"]}: ${"⭐" * review["estrelas"]} - ${review["comentario"]}");
    }
  }
}

void reviewDestination() {
  print("\nDestinos disponíveis para avaliação:");
  for (int i = 0; i < destinations.length; i++) {
    print("${i + 1}. ${destinations[i]}");
  }

  stdout.write("\nEscolha um destino (1-10): ");
  int choice = int.parse(stdin.readLineSync()!);
  String selectedDestination = destinations[choice - 1];

  stdout.write("Quantas estrelas ele merece?(1-5): ");
  int stars = int.parse(stdin.readLineSync()!);

  stdout.write("Deixe um breve comentario: ");
  String comment = stdin.readLineSync()!;

  addReview(selectedDestination, stars, comment);
  showReviews();
}

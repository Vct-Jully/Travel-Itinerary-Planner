import 'dart:io';
import 'itinerary.dart';
import 'review.dart';

void main() {
  while (true) {
    print("\n Planejador de Viagem");
    print("1. Adicionar atividade ao itinerário");
    print("2. Remover atividade do itinerário");
    print("3. Mostrar itinerário");
    print("4. Avaliar um destino");
    print("5. Mostrar avaliações");
    print("0. Sair");
    stdout.write("\nEscolha uma opção: ");

    String? choice = stdin.readLineSync();
    print("");

    switch (choice) {
      case "1":
        stdout.write("Nome da atividade: ");
        String name = stdin.readLineSync()!;
        stdout.write("Horário (ex: 10:00): ");
        String hours = stdin.readLineSync()!;
        addActivity(name, hours);
        print(" Atividade adicionada!");
        break;

      case "2":
        stdout.write("Nome da atividade para remover: ");
        String name = stdin.readLineSync()!;
        removeActivity(name);
        print(" Atividade removida!");
        break;

      case "3":
        showItinerary();
        break;

      case "4":
        reviewDestination();
        break;

      case "5":
        showReviews();
        break;

      case "0":
        print(" Encerrando o programa...");
        return;

      default:
        print(" Opção inválida! Escolha um número válido.");
    }
  }
}

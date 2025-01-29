List<Map<String, dynamic>> itinerary = [];

void addActivity(String name, String hours) {
  itinerary.add({"nome": name, "horario": hours});
}

void removeActivity(String nome) {
  itinerary.removeWhere((activity) => activity["nome"] == name);
}

void showItinerary() {
  if (itinerary.isEmpty) {
    print("Nenhuma atividade no itinerário.");
  } else {
    print("Itinerário de Viagem:");
    for (var activity in itinerary) {
      print("- ${activity["nome"]} às ${activity["horario"]}");
    }
  }
}

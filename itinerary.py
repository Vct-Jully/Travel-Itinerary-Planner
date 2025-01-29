itinerary = []

def add_activity(name, hours):
    itinerary.append({"nome": name, "horario": hours})

def remove_activity(name):
    global itinerary
    itinerary = [activity for activity in itinerary if activity["nome"] != name]

def show_itinerary():
    if not itinerary:
        print("\nNenhuma atividade no itinerário.\n")
    else:
        print("\nItinerário de Viagem:")
        for activity in itinerary:
            print(f"- {activity['nome']} às {activity['horario']}")

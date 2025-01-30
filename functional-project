import random

# Itinerário
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

# Avaliação de Destinos
destinations = [
    "Paris", "Nova York", "Tóquio", "Roma", "Londres",
    "Sydney", "Rio de Janeiro", "Cairo", "Dubai", "Bangkok"
]

reviews = []

def review_destination():
    selected_destination = random.choice(destinations)

    print(f"\nDestino para avaliação: {selected_destination}")
    stars = int(input("Dê uma nota de 1 a 5 estrelas: "))
    comment = input("Escreva um comentário: ")

    reviews.append({
        "destino": selected_destination,
        "estrelas": stars,
        "comentario": comment
    })

    print("\nAvaliação registrada!")
    print(f"Destino: {selected_destination}")
    print(f"Estrelas: {'*' * stars}")
    print(f"Comentário: {comment}\n")

# Informações sobre destinos
destination_info = {
    "Paris": "Cidade Luz, famosa pela Torre Eiffel e gastronomia.",
    "Nova York": "Grande metrópole, com a Estátua da Liberdade e Times Square.",
    "Tóquio": "Capital do Japão, com tecnologia avançada e templos históricos.",
    "Roma": "Cidade do Coliseu e da história do Império Romano.",
    "Rio de Janeiro": "Praia de Copacabana."
}

def get_destination_info():
    print("\nDestinos disponíveis:")
    for dest in destination_info.keys():
        print(f"- {dest}")
    
    choice = input("\nEscolha um destino para mais informações: ")
    print(f"\n{destination_info.get(choice, 'Destino não encontrado.')}\n")

# Simulação de Rotas
routes = {
    "Paris - Roma": "Voo direto: 2h",
    "Londres - Tóquio": "Voo direto: 12h",
    "Nova York - Rio de Janeiro": "Voo direto: 9h",
}

def get_route():
    print("\nRotas disponíveis:")
    for route in routes.keys():
        print(f"- {route}")

    choice = input("\nEscolha uma rota para ver o tempo estimado: ")
    print(f"\nTempo estimado: {routes.get(choice, 'Rota não encontrada.')}\n")

# Gerenciamento de Despesas
expenses = []

def add_expense():
    category = input("\nCategoria da despesa (Transporte, Alimentação, etc.): ")
    amount = float(input("Valor gasto (R$): "))
    expenses.append({"categoria": category, "valor": amount})
    print("Despesa adicionada!")

def show_expenses():
    if not expenses:
        print("\nNenhuma despesa registrada.\n")
        return
    
    total = sum(expense["valor"] for expense in expenses)
    print("\nDespesas registradas:")
    for exp in expenses:
        print(f"- {exp['categoria']}: R$ {exp['valor']:.2f}")
    
    print(f"\nTotal gasto: R$ {total:.2f}\n")

# Sugestões baseadas em preferências
preferences = {
    "Aventura": ["Visita as Cataratas do Iguaçu", "Mergulho em Dubai"],
    "Cultura": ["Visita ao Louvre em Paris", "Ópera em Londres"],
    "Gastronomia": ["Tour gastronômico em Roma", "Mercados de Tóquio"]
}

def suggest_activity():
    print("\nCategorias disponíveis:")
    for category in preferences.keys():
        print(f"- {category}")

    choice = input("\nEscolha uma categoria: ")
    print(f"\nSugestões: {preferences.get(choice, ['Nenhuma sugestão disponível.'])}\n")

# Menu Principal
def main():
    while True:
        print("\nMenu:")
        print("1 - Adicionar atividade ao itinerário")
        print("2 - Remover atividade do itinerário")
        print("3 - Mostrar itinerário")
        print("4 - Avaliar um destino")
        print("5 - Informações sobre destinos")
        print("6 - Ver tempo estimado de rota")
        print("7 - Adicionar despesa")
        print("8 - Mostrar despesas")
        print("9 - Sugestões personalizadas")
        print("10 - Sair")

        choice = input("Escolha uma opção: ")

        if choice == "1":
            name = input("\nNome da atividade: ")
            hours = input("Horário: ")
            add_activity(name, hours)
            print("Atividade adicionada.")
        elif choice == "2":
            name = input("\nNome da atividade para remover: ")
            remove_activity(name)
            print("Atividade removida.")
        elif choice == "3":
            show_itinerary()
        elif choice == "4":
            review_destination()
        elif choice == "5":
            get_destination_info()
        elif choice == "6":
            get_route()
        elif choice == "7":
            add_expense()
        elif choice == "8":
            show_expenses()
        elif choice == "9":
            suggest_activity()
        elif choice == "10":
            print("\nPrograma encerrado.")
            break
        else:
            print("\nOpção inválida, tente novamente.")

if __name__ == "__main__":
    main()



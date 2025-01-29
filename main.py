import itinerary
import review

def main():
    while True:
        print("\nMenu:")
        print("1 - Adicionar atividade ao itinerário")
        print("2 - Remover atividade do itinerário")
        print("3 - Mostrar itinerário")
        print("4 - Avaliar um destino")
        print("5 - Sair")

        choice = input("Escolha uma opção: ")

        if choice == "1":
            name = input("\nNome da atividade: ")
            hours = input("Horário: ")
            itinerary.add_activity(name, hours)
            print("Atividade adicionada.")
        elif choice == "2":
            name = input("\nNome da atividade para remover: ")
            itinerary.remove_activity(name)
            print("Atividade removida.")
        elif choice == "3":
            itinerary.show_itinerary()
        elif choice == "4":
            review.review_destination()
        elif choice == "5":
            print("\nPrograma encerrado.")
            break
        else:
            print("\nOpção inválida, tente novamente.")

if __name__ == "__main__":
    main()

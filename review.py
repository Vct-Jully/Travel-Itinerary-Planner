import random

destinations = [
    "Paris", "Nova York", "Tóquio", "Roma", "Londres",
    "São Paulo", "Rio de Janeiro", "Cairo", "Dubai", " Peru"
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

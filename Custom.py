import random

# definindo o nome separado por _ para ficar disponivel no robot como 'Random Nome Cliente'
def random_nome_cliente():
    nomes = ["Maria", "João", "José"]
    return random.choice(nomes)
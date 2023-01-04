from faker import Faker
fake = Faker(['pt_BR'])

def factory_artigo():

    return{
        "titulo": fake.text(),
        "resumo": fake.text(),
        "text": fake.text()
    }
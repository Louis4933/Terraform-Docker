#!/usr/bin/env python
# coding: utf-8

# In[1]:


from fastapi import FastAPI

# Créez une instance de l'application FastAPI
app = FastAPI()

# Définissez un point de terminaison pour la route principale "/"
@app.get("/")
def read_root():
    return {"message": "Bienvenue sur votre API FastAPI"}

# Définissez un point de terminaison pour la route "/items/{item_id}"
@app.get("/items/{item_id}")
def read_item(item_id: int, q: str = None):
    return {"item_id": item_id, "q": q}

# Exécutez l'application avec Uvicorn au port 8000
# Pour exécuter l'API, utilisez la commande suivante dans votre terminal :
# uvicorn nom_du_fichier.py:app --reload
# Remplacez "nom_du_fichier.py" par le nom du fichier où se trouve le code ci-dessus.

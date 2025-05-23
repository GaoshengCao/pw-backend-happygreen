# HappyGreen Backend API

<div align="center">
  <img src=media/img/logo.png alt="HappyGreen Logo" width="150">
  <h3>Sostenibilità a portata di click</h3>
</div>

## 📋 Indice
- [Descrizione del progetto](#-descrizione-del-progetto)
- [Funzionalità](#-funzionalità)
- [Requisiti di sistema](#-requisiti-di-sistema)
- [Installazione](#-installazione)
  - [Windows](#windows)
  - [MacOS](#macos)
  - [Linux](#linux)
- [Struttura del progetto](#-struttura-del-progetto)
- [REST API Endpoints](#-rest-api-endpoints)
- [Tecnologie utilizzate](#-tecnologie-utilizzate)
- [Team di sviluppo](#-team-di-sviluppo)
- [Licenza](#-licenza)

## 📝 Descrizione del Progetto

HappyGreen è un'applicazione mobile Android progettata per sensibilizzare gli utenti sul tema della sostenibilità ambientale attraverso il riconoscimento di oggetti, quiz educativi e condivisione di informazioni ecologiche. Questo repository contiene il backend dell'applicazione, sviluppato con Django REST Framework.

Il progetto è stato realizzato come parte del corso TPSIT (Tecnologie e Progettazione di Sistemi Informatici e di Telecomunicazioni) per offrire agli studenti uno strumento divertente e interattivo per imparare a prendersi cura dell'ambiente.

## 🔍 Funzionalità

Il backend supporta le seguenti funzionalità:

- 👤 **Gestione Utenti**: Registrazione e autenticazione tramite JWT
- 👥 **Gruppi di Amici**: Creazione e gestione di gruppi con diversi ruoli utente
- 📱 **Condivisione Contenuti**: Post, commenti e geolocalizzazione
- 📷 **Riconoscimento Oggetti**: Archiviazione di oggetti scansionati con ML Kit
- ❓ **Quiz e Sfide**: Quiz educativi sulla sostenibilità con sistema di punteggio
- 🏆 **Badge e Premi**: Sistema di ricompense per le attività ecologiche
- 🔍 **Scanner Barcode**: Database di prodotti eco-friendly e alternative sostenibili
- ♻️ **Classificazione Rifiuti**: Guida interattiva alla raccolta differenziata

## 💻 Requisiti di Sistema

- Python 3.8+
- MySQL 8.0+ o MariaDB 10.5+
- Django 5.0+
- Django REST Framework 3.14+
- Ambiente virtuale Python (venv o virtualenv)

## 🚀 Installazione

### Windows

1. Clona il repository:
   ```bash
   git clone https://github.com/tuousername/backend-happygreen.git
   cd backend-happygreen
   ```

2. Crea un ambiente virtuale:
   ```bash
   python -m venv .venv
   .venv\Scripts\activate
   ```

3. Installa le dipendenze:
   ```bash
   pip install -r requirements.txt
   ```

4. Configura il database MySQL:
   ```bash
   mysql -u root -p
   CREATE DATABASE pwhappygreen_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
   SOURCE pwhappygreen_db.sql;
   exit
   ```

5. Esegui le migrazioni:
   ```bash
   python manage.py migrate
   ```

6. Avvia il server:
   ```bash
   python manage.py runserver
   ```

### MacOS

1. Clona il repository:
   ```bash
   git clone https://github.com/tuousername/backend-happygreen.git
   cd backend-happygreen
   ```

2. Crea un ambiente virtuale:
   ```bash
   python3 -m venv .venv
   source .venv/bin/activate
   ```

3. Installa le dipendenze:
   ```bash
   pip install -r requirements.txt
   ```

4. Configura il database MySQL:
   ```bash
   mysql -u root -p
   CREATE DATABASE pwhappygreen_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
   SOURCE pwhappygreen_db.sql;
   exit
   ```

5. Esegui le migrazioni:
   ```bash
   python manage.py migrate
   ```

6. Avvia il server:
   ```bash
   python manage.py runserver
   ```

### Linux

1. Clona il repository:
   ```bash
   git clone https://github.com/tuousername/backend-happygreen.git
   cd backend-happygreen
   ```

2. Crea un ambiente virtuale:
   ```bash
   python3 -m venv .venv
   source .venv/bin/activate
   ```

3. Installa le dipendenze:
   ```bash
   pip install -r requirements.txt
   ```

4. Configura il database MySQL:
   ```bash
   sudo mysql -u root -p
   CREATE DATABASE pwhappygreen_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
   SOURCE pwhappygreen_db.sql;
   exit
   ```

5. Esegui le migrazioni:
   ```bash
   python manage.py migrate
   ```

6. Avvia il server:
   ```bash
   python manage.py runserver
   ```

## 📁 Struttura del Progetto

```
backend-happygreen/
├── backend_happygreen/      # Directory principale del progetto Django
│   ├── __init__.py
│   ├── asgi.py
│   ├── settings.py          # Configurazioni del progetto
│   ├── urls.py              # URL mapper principale
│   └── wsgi.py
├── happygreen/              # App principale
│   ├── __init__.py
│   ├── admin.py             # Configurazione admin panel
│   ├── apps.py
│   ├── models.py            # Modelli del database
│   ├── serializers.py       # Serializzatori REST
│   ├── tests.py             # Test unitari e API
│   ├── urls.py              # URL della app
│   └── views.py             # Logic views e API endpoints
├── templates/               # Template HTML
│   └── index.html           # Homepage API
├── media/                   # File caricati dagli utenti
├── .venv/                   # Ambiente virtuale Python
├── manage.py                # Script di gestione Django
└── requirements.txt         # Dipendenze Python
```

## 🌐 REST API Endpoints

L'API offre i seguenti endpoint:

- **Autenticazione**
  - `POST /token/`: Ottieni token JWT
  - `POST /token/refresh/`: Rinnova token JWT

- **Utenti**
  - `GET /users/`: Lista utenti
  - `POST /users/`: Crea nuovo utente
  - `GET /users/{id}/`: Dettagli utente
  - `PUT /users/{id}/`: Aggiorna utente
  - `DELETE /users/{id}/`: Elimina utente

- **Gruppi**
  - `GET /groups/`: Lista gruppi
  - `POST /groups/`: Crea nuovo gruppo
  - `GET /groups/{id}/`: Dettagli gruppo
  - `PUT /groups/{id}/`: Aggiorna gruppo
  - `DELETE /groups/{id}/`: Elimina gruppo

- **Post e Commenti**
  - `GET /posts/`: Lista post
  - `POST /posts/`: Crea nuovo post
  - `GET /posts/{id}/`: Dettagli post
  - `GET /comments/`: Lista commenti
  - `POST /comments/`: Crea nuovo commento

- **Oggetti Scansionati**
  - `GET /scanned-objects/`: Lista oggetti scansionati
  - `POST /scanned-objects/`: Aggiungi oggetto scansionato

- **Quiz e Badge**
  - `GET /quizzes/`: Lista quiz
  - `GET /badges/`: Lista badge

- **Prodotti Eco-Friendly**
  - `GET /eco-products/`: Lista prodotti eco
  - `GET /eco-products/{barcode}/`: Cerca prodotto per barcode

- **Classificazione Rifiuti**
  - `GET /waste-classifications/`: Guida alla raccolta differenziata

## 🛠 Tecnologie Utilizzate

- **Backend**: Django, Django REST Framework, JWT Authentication
- **Database**: MySQL/MariaDB
- **Deployment**: ngrok per test da dispositivi mobili
- **Testing**: Django TestCase, APITestCase

## 👨‍💻 Team di Sviluppo

Progetto realizzato da:
- Edoardo Cortivo
- Cao Gaosheng
- Veltroni Dario

## 📄 Licenza

Questo progetto **non ha una licenza**.
Tutto il codice è coperto dai diritti di autore.
Questo progetto **non** è open-source 

# Usa un'immagine base con Python preinstallato
FROM python:3.9-slim

# Imposta la directory di lavoro dentro il container
WORKDIR /app

# Copia lo script Python nel container
COPY twitch_prime_autosub.py .

# Installa eventuali dipendenze (se presenti un file requirements.txt)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Comando per eseguire lo script Python
CMD ["python", "twitch_prime_autosub.py"]

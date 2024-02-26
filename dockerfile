# Użyj oficjalnego obrazu Pythona jako obrazu bazowego
FROM python:3.10

# Ustaw katalog roboczy w kontenerze
WORKDIR /app

# Skopiuj pliki projektu do katalogu roboczego w kontenerze
COPY . /app

# Zainstaluj zależności projektu
RUN pip install --no-cache-dir -r requirements.txt


# Określ polecenie, które zostanie uruchomione po starcie kontener
CMD ["python", "load_nd_test.py"]

# Ambil base image Python
FROM python:3.9-slim-buster

# Set working directory
WORKDIR /app

# Salin file dependensi
COPY requirements.txt .

# Install dependensi
RUN pip install --no-cache-dir -r requirements.txt

# Salin kode aplikasi
COPY . .

# Jalankan aplikasi Flask
CMD ["python", "app.py"]

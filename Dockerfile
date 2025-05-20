FROM python:3.12-slim

EXPOSE 8501

RUN apt-get update && apt-get install -y \
    build-essential \
    poppler-utils \
    software-properties-common \
    git \
    && rm -rf /var/lib/apt/lists/*
    
WORKDIR /app

COPY . /app


RUN pip install --no-cache-dir -r requirements.txt

ENTRYPOINT ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
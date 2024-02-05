FROM python:3.9-slim

WORKDIR /app

COPY static/ /app
COPY templates/ /app
COPY main.py /app
COPY model.py /app
COPY requirements.txt /app

RUN pip install --no-cache-dir --upgrade -r requirements.txt

EXPOSE 8000

CMD ["python", "main.py"]
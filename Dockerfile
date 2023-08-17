FROM python:slim

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

EXPOSE 8080

ENTRYPOINT ["python3", "app.py"]
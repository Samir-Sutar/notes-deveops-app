From python:3.9-slim 
WORKDIR /app
COPY requirements.txt /app
RUN pip install -r requirements.txt
COPY . /app
EXPOSE 8000
CMD python /app/manage.py runserver 0.0.0.0:8080
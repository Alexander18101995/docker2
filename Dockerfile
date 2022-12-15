FROM python:3.8

WORKDIR /crud_django

COPY . .

RUN pip install -r /crud_django/requirements.txt

RUN python manage.py migrate

EXPOSE 8000

CMD gunicorn stocks_products.wsgi -b 0.0.0.0:8000
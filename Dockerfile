FROM python:3 as build

WORKDIR /app

ADD requirements.txt .
RUN pip install -r requirements.txt


FROM build as run

ADD . .
RUN python manage.py collectstatic

EXPOSE 8000

#ENTRYPOINT [ "python", "manage.py", "runserver" ]
ENTRYPOINT [ "gunicorn", "InDjango.wsgi", "--bind", "0.0.0.0"]
FROM python:3.10.4

RUN apt update

RUN apt install -y vim
RUN apt install -y htop

RUN apt install -y python3 pip

COPY . Creating_a_project_Django

WORKDIR /Creating_a_project_Django

RUN pip3 install django
RUN python3 manage.py makemigrations
RUN python3 manage.py migrate

CMD ["python3","manage.py","runserver","0.0.0.0:8000"]

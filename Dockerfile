FROM python:3.13
#version 3.13 unstable

# Set the working directory
WORKDIR /main

# Copy the requirements file into the working directory
COPY requirements.txt /main 
#RUN pip install --upgrade pip
#RUN pip install -r requirements.txt
RUN apt-get update && apt-get install -y libpq-dev gcc
RUN apt-get install libpq-dev -y
RUN pip install psycopg
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

COPY . /main

#go inside app/ before run the server
WORKDIR /main/app


CMD ["python" ,"manage.py" ,"runserver" , "0.0.0.0:80"]
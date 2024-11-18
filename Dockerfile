FROM python:3.13
#version 3.13 unstable

# Set the working directory
WORKDIR /main

# Copy the requirements file into the working directory
COPY requirements.txt /main 
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
COPY . /main
RUN apt-get update

#go inside app/ before run the server
WORKDIR /main/app


CMD ["python" ,"manage.py" ,"runserver" , "0.0.0.0:80"]
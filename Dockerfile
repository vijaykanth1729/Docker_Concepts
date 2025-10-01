# FROM centos:8

# WORKDIR /app

# RUN echo "Hi There!!" > /app/message.txt

# COPY . .

# # it allows to expose port of your application.

# EXPOSE 3000

# ENV data=123 \
#     XYZ=ABC

#     # executable and params..
# CMD ["echo", "hi"]




FROM python:latest

WORKDIR /app

COPY requirements.txt /app

RUN pip install -r requirements.txt 

COPY . /app/

EXPOSE 5000

CMD ["python", "app.py"]

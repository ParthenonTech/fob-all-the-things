FROM python:3-alpine
ENV FLASK_APP /usr/src/app/app.py

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY requirements.txt /usr/src/app/
RUN pip install --no-cache-dir -r requirements.txt

COPY . /usr/src/app

# Expose the Flask port
EXPOSE 5000

CMD [ "python", "./app.py" ]

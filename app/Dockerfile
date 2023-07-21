FROM python:alpine
WORKDIR /app
ADD app.py /app
ADD requirements.txt /app
RUN pip install -r requirements.txt
CMD [ "python", "app.py" ]
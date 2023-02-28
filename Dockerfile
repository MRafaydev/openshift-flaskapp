FROM python:3.8-slim-buster
RUN mkdir -p /root/.cache/pip
VOLUME /root/.cache/pip
WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
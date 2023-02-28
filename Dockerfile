FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt

# Install the Python packages with pip
RUN pip3 install --no-cache-dir -r requirements.txt

# Set up the cache directory and copy the application code
RUN mkdir -p /root/.cache/pip
COPY . .

# Start the Flask application
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]

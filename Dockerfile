# start by pulling the ubuntu image
FROM python:3.12.8

# installed default Apps
RUN apt-get update && apt-get install -y apt-utils vim unixodbc ffmpeg libsm6 libxext6 unixodbc-dev build-essential libpoppler-cpp-dev python-dev python3-dev

# Create Work directory
WORKDIR /app

# Copy the Code to Working Directory
COPY . /app

# Installing Requirements.txt
RUN pip install --upgrade -r requirements.txt --no-cache-dir

# Expose Port 80
EXPOSE 8080

# configure the container to run in an executed manner
ENTRYPOINT [ "python" ]

# Run the Pyscrapy API Application
CMD ["app.py" ]


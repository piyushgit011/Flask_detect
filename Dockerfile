FROM python:3.10.5
COPY . /tflite_vision/final_optimised
WORKDIR /tflite_vision/final_optimised
RUN pip install -requirements.txt
EXPOSE $PORT
CMD gunicorn --workers=4 --bind 0.0.0.0:$PORT app:final_optimised
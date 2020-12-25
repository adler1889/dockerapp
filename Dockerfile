FROM python:3.8.6-slim-buster
RUN pip install Flask==1.1.2 redis==3.5.3
RUN useradd -ms /bin/bash admin
USER admin
COPY app /app
WORKDIR /app
CMD ["python", "app.py"] 

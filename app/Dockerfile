FROM python:3.9
WORKDIR /app
COPY  /app /app
RUN python -m pip install --upgrade pip && pip install -r requirements.txt
EXPOSE 8000
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]





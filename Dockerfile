
FROM python:3.8-slim-buster

WORKDIR /app
COPY . . 

RUN pip install --trusted-host pypi.python.org -r requirements.txt

EXPOSE 5000
ENTRYPOINT [ "python" ]

CMD ["app.py" ]
#CMD ["python", "-m", "flask", "run", "--host=0.0.0.0"]

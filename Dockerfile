FROM default-route-openshift-image-registry.apps.dev.customs.go.id/openshift/python:alphine

WORKDIR /app
ENV PYTHONPATH /app
COPY . .
#COPY ./requirements.txt ./
RUN pip install -r requirements.txt
# ADD app.py
EXPOSE 8080

CMD ["python","app.py"]

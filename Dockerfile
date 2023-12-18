FROM image-registry.openshift-image-registry.svc:5000/openshift/python

WORKDIR /app
ENV PYTHONPATH /app
COPY . .
#COPY ./requirements.txt ./
RUN pip install -r requirements.txt
# ADD app.py
EXPOSE 8080

CMD ["python","app.py"]

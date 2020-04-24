FROM python:3.6-jessie
RUN apt update
WORKDIR /data-science-on-gcp
ADD requirements.txt /data-science-on-gcp/requirements.txt
RUN pip install -r /data-science-on-gcp/requirements.txt
ADD . /data-science-on-gcp
ENV PORT 8080
CMD ["gunicorn", "app:main", "--config=config.py"]
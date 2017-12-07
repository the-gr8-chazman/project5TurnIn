FROM python:2.7.10

COPY requirements.txt .

ADD . /instruct
COPY . /instruct
WORKDIR /instruct
RUN pip install -r requirements.txt 
ENTRYPOINT ["python", "CLI.py"]

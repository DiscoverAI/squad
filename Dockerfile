# falcowinkler/cs224n-default-project
FROM pytorch/pytorch:1.5.1-cuda10.1-cudnn7-runtime
# ADD data /app/data # assuming you ran the setup locally
RUN apt-get update -y && apt-get install -y build-essential gcc
ADD requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt
ADD . /app
ENTRYPOINT ./run-docker.sh
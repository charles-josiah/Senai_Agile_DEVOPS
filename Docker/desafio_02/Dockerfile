FROM ubuntu
RUN apt-get update
RUN ["apt-get", "-y","install", "python", "python-pip", "python-dev","build-essential"]
RUN mkdir -p /templates
COPY requirements.txt  /tmp
COPY color.py /
COPY hello.html /templates
RUN /usr/bin/pip install -r /tmp/requirements.txt
ENTRYPOINT ["/usr/bin/python","/color.py"]

EXPOSE 8087 

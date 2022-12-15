FROM ubuntu:23.04

WORKDIR /data
RUN apt-get update && \
    apt-get install -yq tzdata && \
    ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata
ENV TZ="America/New_York"
ENV QTWEBENGINE_CHROMIUM_FLAGS="--no-sandbox"
RUN apt-get update && apt-get install -y python3-pip && apt-get install -y calibre
COPY requirements.txt generate-ebooks.py Cover.png ./
RUN pip install --no-cache-dir -r requirements.txt
CMD ["python3", "./generate-ebooks.py"]
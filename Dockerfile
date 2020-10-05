FROM ubuntu:18.04


RUN apt update && apt install git wget unzip python3 python3-pip -y \
    && git clone https://github.com/z8rubinaz1/vue-realworld-example-app.git \
    && cd vue-realworld-example-app \
    && wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb \
    && wget https://chromedriver.storage.googleapis.com/85.0.4183.87/chromedriver_linux64.zip \
    && apt install ./google-chrome-stable_current_amd64.deb -y \
    && unzip chromedriver_linux64.zip \
    && pip3 install selenium \
    && vmstat 60 1440 & \
    && python3 main.py

    

CMD ["ls"]

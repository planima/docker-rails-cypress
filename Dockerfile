FROM cimg/ruby:2.7.4-node

RUN sudo apt-get update
RUN sudo apt-get install -y build-essential patch ruby-dev zlib1g-dev liblzma-dev libxml2-dev
RUN sudo apt-get install -y xvfb libgtk2.0-0 libnotify-dev libgconf-2-4 libnss3 libxss1 libasound2

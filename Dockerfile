FROM cimg/ruby:3.1.4-node

# Install the same version of Node.js and Yarn as the 3.0.4-node image
ENV NODE_VERSION 16.14.2
RUN curl -L -o node.tar.xz "https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-x64.tar.xz" && \
  sudo tar -xJf node.tar.xz -C /usr/local --strip-components=1 && \
  rm node.tar.xz && \
  sudo ln -s /usr/local/bin/node /usr/local/bin/nodejs

ENV YARN_VERSION 1.22.5
RUN curl -L -o yarn.tar.gz "https://yarnpkg.com/downloads/${YARN_VERSION}/yarn-v${YARN_VERSION}.tar.gz" && \
  sudo tar -xzf yarn.tar.gz -C /opt/ && \
  rm yarn.tar.gz && \
  sudo ln -s /opt/yarn-v${YARN_VERSION}/bin/yarn /usr/local/bin/yarn && \
  sudo ln -s /opt/yarn-v${YARN_VERSION}/bin/yarnpkg /usr/local/bin/yarnpkg

RUN sudo apt-get update
RUN sudo apt-get install -y build-essential patch ruby-dev zlib1g-dev liblzma-dev libxml2-dev
RUN sudo apt-get install -y xvfb libgtk2.0-0 libnotify-dev libgconf-2-4 libnss3 libxss1 libasound2
RUN sudo apt-get install libgtk-3-0 libgbm-dev libxtst6 xauth

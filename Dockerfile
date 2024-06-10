FROM quay.io/hermit/hermit-ser:latest

RUN git clone https://github.com/confronter/DRAGON-MD /root/DRAGON-MD
WORKDIR /root/DRAGON-MD/
RUN yarn install --network-concurrency 1
CMD ["node", "index.js"]

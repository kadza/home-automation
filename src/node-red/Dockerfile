FROM nodered/node-red:2.1.3-12-minimal

# Copy package.json to the WORKDIR so npm builds all
# of your added nodes modules for Node-RED
COPY package.json .
RUN npm install --unsafe-perm --no-update-notifier --no-fund --only=production

# You should add extra nodes via your package.json file but you can also add them here:
#WORKDIR /usr/src/node-red
#RUN npm install node-red-node-smooth
USER 0
COPY node-red-contrib-komfovent-0.3.3.tgz .
RUN mkdir -p node-red-contrib-komfovent && tar -zxvf node-red-contrib-komfovent-0.3.3.tgz -C node-red-contrib-komfovent --strip-components=1
RUN cd node-red-contrib-komfovent && npm link
RUN npm link node-red-contrib-komfovent

# Copy _your_ Node-RED project files into place
# NOTE: This will only work if you DO NOT later mount /data as an external volume.
#       If you need to use an external volume for persistence then
#       copy your settings and flows files to that volume instead.
USER node-red
COPY settings.js /data/settings.js
COPY flows_cred.json /data/flows_cred.json
COPY flows.json /data/flows.json
RUN mkdir -p /data/context/global
COPY global.json /data/context/global/global.json
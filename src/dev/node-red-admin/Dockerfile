FROM nodered/node-red:2.1.3-12-minimal

RUN npm config set @private:registry http://npm-registry:4873

USER node-red
COPY settings.js /data/settings.js


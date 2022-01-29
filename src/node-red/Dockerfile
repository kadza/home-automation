FROM nodered/node-red:2.1.3-12-minimal

USER node-red
COPY --chown=node-red:node-red node-red-contrib-komfovent-0.3.3.tgz /data/node-red-contrib-komfovent.tgz
COPY --chown=node-red:node-red package.json /data/package.json
RUN cd /data && npm install node-red-contrib-komfovent@file:./node-red-contrib-komfovent.tgz
RUN cd /data && npm install

COPY --chown=node-red:node-red settings.js /data/settings.js
COPY --chown=node-red:node-red .config.projects.json /data/.config.projects.json
COPY --chown=node-red:node-red .config.users.json /data/.config.users.json
COPY --chown=node-red:node-red projects /data/projects/
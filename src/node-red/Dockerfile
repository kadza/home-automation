FROM nodered/node-red:2.1.3-12-minimal

USER node-red
COPY --chown=node-red:node-red package.json /data/package.json
RUN npm install --unsafe-perm --no-update-notifier --no-fund --only=production --no-optional
COPY --chown=node-red:node-red projects/home/package.json /data/projects/home/package.json
# RUN chown -R node-red:node-red /data/projects
RUN cd /data/projects/home && npm install

# USER 0
# COPY node-red-contrib-komfovent-0.3.3.tgz .
# RUN mkdir -p node-red-contrib-komfovent && tar -zxvf node-red-contrib-komfovent-0.3.3.tgz -C node-red-contrib-komfovent --strip-components=1
# RUN cd node-red-contrib-komfovent && npm link
# RUN cd /data/projects/home && npm link node-red-contrib-komfovent

COPY --chown=node-red:node-red settings.js /data/settings.js
COPY --chown=node-red:node-red .config.nodes.json /data/.config.nodes.json
COPY --chown=node-red:node-red .config.projects.json /data/.config.projects.json
COPY --chown=node-red:node-red .config.users.json /data/.config.users.json
COPY --chown=node-red:node-red projects /data/projects/
# RUN chown -R node-red:node-red /data
# USER node-red
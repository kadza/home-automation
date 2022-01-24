FROM nodered/node-red:2.1.3-12-minimal

COPY package.json /data/package.json
RUN npm install --unsafe-perm --no-update-notifier --no-fund --only=production --no-optional
COPY projects/home/package.json /data/projects/home/package.json
USER 0
RUN chown -R node-red:node-red /data/projects
USER node-red
RUN ls -al /data/projects
RUN cd /data/projects/home && npm install

USER 0
COPY node-red-contrib-komfovent-0.3.3.tgz .
RUN mkdir -p node-red-contrib-komfovent && tar -zxvf node-red-contrib-komfovent-0.3.3.tgz -C node-red-contrib-komfovent --strip-components=1
RUN cd node-red-contrib-komfovent && npm link
RUN cd /data/projects/home && npm link node-red-contrib-komfovent

USER 0
COPY settings.js /data/settings.js
COPY .config.nodes.json /data/.config.nodes.json
COPY .config.projects.json /data/.config.projects.json
COPY .config.users.json /data/.config.users.json
COPY projects /data/projects/
RUN chown -R node-red:node-red /data
USER node-red
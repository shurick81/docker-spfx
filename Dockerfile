FROM node:10.22.0

EXPOSE 5432 4321 35729

RUN npm i -g gulp@3 yo @microsoft/generator-sharepoint@1.11.0

VOLUME /usr/app/spfx
WORKDIR /usr/app/spfx
RUN sed -i -e /rootCheck/d /usr/local/lib/node_modules/yo/lib/cli.js

CMD /bin/bash
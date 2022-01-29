
# base image
FROM node:16

# set working directory
WORKDIR /backend

# add `/app/node_modules/.bin` to $PATH
ENV PATH /backend/node_modules/.bin:$PATH

# install and cache app dependencies
COPY package.json /backend/package.json
RUN npm install
RUN npx prisma init

# start app
CMD ["npm", "start"]
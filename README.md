# museDB

## Intro

museDB is a museum and art exhibits application aimed to preserve and promote the cultural heritage of Europe.

## Technology stack

The backend of the app (which is indeed a very basic API with a few GET and POST methods) was built using **node.js** and **Express**. The frontend was created with **React.js** and the corresponding **Material-UI** library. Relational Database was chosen as the best DB technology to store the data.

## How-to-run instructions

### Prerequisites

In order to run the application locally you will need to have the following install on your computer:

- git https://git-scm.com/downloads
- npm and node.js (installed together) https://nodejs.org/en/download/

You can confirm that you have git, npm and node installed on your computer, by simply typing:

```shell
$ git version
$ node -v
$ npm -v
```

The first thing to do is to clone this github repo in order to have it locally:

```shell
$ git clone https://github.com/saouling/musedb.git
```

### Create the Database

Run the SQL script `musedbdump.sql`, which is inside the `/database` directory, with your favourite RDBMS. The development and testing of the museDB application was done using **MariaDB**. Please configure the system to run at `port: 3306` in order to be compatible with the settings of the node.js app.  
The `musedbdump.sql` script generates the `musedb` database and provides some initial data for every table so as the application is functional from the start.

### Run the Backend Node.js Server

Navigate in the `/server` directory and use `npm install` to install the dependencies. Then use `node app` to run the application.

```shell
$ cd server
$ npm install
$ node app
```

You should see the following message:

```shell
$ Server is up and listening on 3003...
```

### Run the Frontend React npm Server

Navigate in the `/client` directory and use `npm install` to install the dependencies (this may take a while...). Then use `npm start` to run the development server.

```shell
$ cd client
$ npm install
$ npm start
```

After this, the terminal should redirect you to `localhost:3000`: that's where the React app is running. You should see the welcoming messages.

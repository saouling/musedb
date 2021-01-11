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

Run the SQL script `musedbdump.sql`, which is inside the `/database` directory, with your favourite RDBMS. The development and testing of the museDB application was done using **MariaDB**. Please configure the system to run at `port: 3306` in order to be compatible with the settings of the node.js app. If you choose another port, make sure to make the required changes described on the next section.
The `musedbdump.sql` script generates the `musedb` database and provides some initial data for every table so as the application is functional from the start.

### Run the Backend Node.js Server

Open a terminal window and navigate in the `/server` directory. Use `npm install` to install the dependencies.

```shell
$ cd server
$ npm install
```

Before actually running the server, let's make sure that we got a valid communication with our RDBMS.  
Still in the `/server` directory, look for a file named `databaseConnect.js`. Open it with your favourite text editor and edit the lines of codes with comments. Specifically, you should your `port` number should be the same with the one of your RDBMS configuration (we set `port: 3306`). Then, you should edit `user` and `password`, setting them again to match those of your RDBMS configuration. For example we set `user: 'root'` and `password: '19mariamaria'`. The other options should be remain unchanged:

```javascript
//...
this.getMuseDBConnection = function () {
  return mysql.createConnection({
    host: "localhost",
    port: 3306, // Specify the port of your database system
    user: "root", // Specify your username
    password: "19mariamaria", // Specify your password
    database: "musedb",
    multipleStatements: true,
  });
};
//...
```

Finally, use `node app` to run the application.

```shell
$ node app
```

You should see the following message:

```shell
$ museDB server is up and listening on port 3003...
```

Please **do not close** this terminal window as you proceed with the next step.

### Run the Frontend React npm Server

Open a **new** terminal window and navigate in the `/client` directory. Once again, use `npm install` to install the dependencies (this may take a while...). Then use `npm start` to run the development server.

```shell
$ cd client
$ npm install
$ npm start
```

After this, the terminal should redirect you to `localhost:3000`: that's where the React app is running. You should see the welcoming messages on the museDB homepage.

### Port configuration

Please let us review the port configuration we described above, for clarity reasons.

- RDBMS: `localhost:3306`
- Server (node.js app): `localhost:3003`
- Client (React.js app): `localhost:3000`

<br/><hr/> \* museDB was created as a project for the **Database Systems** course, 9th semester, School of Engineering, Department of Electrical & Computer Engineering, Aristotle University of Thessaloniki, January 2020.  
Supervising Professor: _Themistoklis Diamantopoulos_.

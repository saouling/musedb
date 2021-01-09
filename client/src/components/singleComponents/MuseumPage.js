import React, { useState, useEffect } from 'react';
import Typography from '@material-ui/core/Typography';
import { makeStyles } from '@material-ui/core/styles';
import Image from 'material-ui-image'
import Container from '@material-ui/core/Container';

const useStyles = makeStyles({
  description : {
  }
});

function MuseumPage( {match} ) {

const original = {name: "loading"}
const [museumData, setMuseumData] = useState(original); 
console.log(match.params.id)
const museumID = match.params.id
const API_URL = `http://localhost:3003/museums/${museumID}`

React.useEffect(() => {
  async function fetchMuseumData() {
    var data = await fetch(API_URL)
    .then(res => {
      return res.json();
    })
    .catch((error) => console.log("Error: " + error.message));
    console.log(data[0])
    console.log('async')
    setMuseumData(data[0]);
    console.log(museumData); 
  }
  fetchMuseumData();
}, []);

const classes = useStyles();

return (
  <div style={{ padding: "40px" }}>
    <Container> 
      <Typography gutterBottom color="textPrimary" variant="h1" component="h1">
        {museumData.name}
      </Typography>
      <Image
        imageStyle={{height: '500px', width: '100%', padding: '0px'}}
        style={{height: '500px', width: '100%', padding: '0px'}}
        src={museumData.photo}
        cover={true}
      />
      <Typography color="primary" variant="h2" component="h2" align="right">
        {museumData.type}
      </Typography>
      <Typography variant="body1" align = "justify" color="textPrimary" component="p" className={classes.description}>
        {museumData.description} 
      </Typography>
      <br></br>
      <Typography color="primary" variant="h3" component="h3" align="center">
        info
      </Typography>
      <Typography variant="body1" align = "center" color="textSecondary" component="p" className={classes.description}>
        {"website: " + museumData.website} <br/>
        {"address: " + museumData.address} <br/>
        {"email: " + museumData.email} <br/>
        {"phone: " + museumData.phone} <br/>
        {"staff: " + museumData.staff} <br/>
      </Typography>
    </Container>
  </div>
)
}

export default MuseumPage;
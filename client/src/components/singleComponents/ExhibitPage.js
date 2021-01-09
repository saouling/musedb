import React, { useState, useEffect } from 'react';
import Typography from '@material-ui/core/Typography';
import { makeStyles } from '@material-ui/core/styles';
import Image from 'material-ui-image'
import Container from '@material-ui/core/Container';

const useStyles = makeStyles({
  description : {
  }
});

function ExhibitPage( {match} ) {

const original = {name: "loading"}
const [exhibitData, setExhibitData] = useState(original); 
console.log(match.params.id)
const exhibitID = match.params.id
const API_URL = `http://localhost:3003/exhibits/${exhibitID}`

React.useEffect(() => {
  async function fetchExhibitData() {
    var data = await fetch(API_URL)
    .then(res => {
      return res.json();
    })
    .catch((error) => console.log("Error: " + error.message));
    console.log(data[0])
    console.log('async')
    setExhibitData(data[0]);
    console.log(exhibitData); 
  }
  fetchExhibitData();
}, []);

const classes = useStyles();

return (
  <div style={{ padding: "40px" }}>
    <Container>
      <Typography gutterBottom color="textPrimary" variant="h1" component="h1">
        {exhibitData.name}
      </Typography>
      <Image
        src={exhibitData.photo}
        style={{padding: '300px'}}
        imageStyle={{height: '500px', width: '100%', padding: '0px'}}
        style={{height: '500px', width: '100%', padding: '0px'}}
        cover={true}
      />
      <Typography color="primary" variant="h2" component="h2" align="right">
        {exhibitData.creator}
      </Typography>
      <Typography variant="body1" align = "justify" color="textPrimary" component="p" className={classes.description}>
        {exhibitData.description} 
      </Typography>
    </Container>
  </div>
)
}

export default ExhibitPage;
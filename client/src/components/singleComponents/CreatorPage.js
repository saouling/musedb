import React, { useState, useEffect } from 'react';
import Typography from '@material-ui/core/Typography';
import { makeStyles } from '@material-ui/core/styles';
import Image from 'material-ui-image'
import Container from '@material-ui/core/Container';
import Grid from '@material-ui/core/Grid';


const useStyles = makeStyles({
  bio : {
  }
});

function CreatorPage( {match} ) {

const loading = {name: "loading"}
const [creatorData, setCreatorData] = useState(loading); 
console.log(match.params.id)
const creatorID = match.params.id
const API_URL = `http://localhost:3003/creators/${creatorID}`

React.useEffect(() => {
  async function fetchcreatorData() {
    var data = await fetch(API_URL)
    .then(res => {
      return res.json();
    })
    .catch((error) => console.log("Error: " + error.message));
    console.log(data[0])
    setCreatorData(data[0]);
    console.log(creatorData); 
  }
  fetchcreatorData();
}, []);

const classes = useStyles();

return (
<div style={{ padding: "40px" }}>
  <Container>
    <Typography gutterBottom color="textPrimary" variant="h1" component="h1" align="left">
      {creatorData.name}
    </Typography>
      <Image
      src={creatorData.photo}
      cover={true}
      imageStyle={{height: '600px', padding: '0px'}}
      style={{height: '600px', padding: '0px'}}
      />
    <Typography color="primary" variant="h2" component="h2" align="right">
      {creatorData.nationality}
    </Typography>
    <Typography variant="body1" align = "justify" color="textPrimary" component="p" className={classes.bio}>
      {creatorData.bio} 
    </Typography>
  </Container>  
  </div>
  )
}

export default CreatorPage;


{/* <div>
<Typography gutterBottom color="textPrimary" variant="h1" component="h1">
  {creatorData.name}
</Typography>
<Container maxWidth = 'lg'> 
  <Image
    src={creatorData.photo}
    // style={{height: '100vh'}}
  />
</Container>
<Typography gutterBottom color="secondary" variant="h2" component="h2" align="right">
  {creatorData.nationality}
</Typography>
<Typography variant="body1" align = "justify" color="textPrimary" component="p" className={classes.bio}>
  {creatorData.bio} 
</Typography>
</div> */}
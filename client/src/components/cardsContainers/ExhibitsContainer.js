import React, { useState, useEffect } from 'react';
import Grid from '@material-ui/core/Grid';
import ExhibitCard from '../cards/ExhibitCard';
import Typography from '@material-ui/core/Typography';
import { Link } from 'react-router-dom'
import SearchBar from "material-ui-search-bar";


function CardsContainer() {

  const originalExhibit = 
    [
      {
        "name": "Test",
        "creator": "Creator",
        "description": "Description",
        "type": "Type",
        "imagsrc": "https://www.animationvideo.co/wp-content/uploads/2017/12/How-to-video.jpg"
      }
    ]
  
  const [exhibitData, setExhibitData] = useState(originalExhibit); 
  const [searchText, setSearchText] = useState("");

  console.log(exhibitData)


  React.useEffect(() => {
    const querryAllExhibitsURL = 'http://localhost:3003/exhibits'
    async function fetchExhibitData() {
      var data = await fetch(querryAllExhibitsURL)
      .then(res => {
        return res.json();
      })
      .catch((error) => console.log("Error: " + error.message));
      console.log('async')
      setExhibitData(data);
      console.log(exhibitData[0]);
    }
    fetchExhibitData();
  }, []);


    const listitems = exhibitData.map( (exhibitData) => 
    {
      return(
        <Grid item spacing={1}>
          <ExhibitCard 
            title = {exhibitData.name}
            creator = {exhibitData.creator}
            description = {exhibitData.description.substring(0, 150) + "..."}
            type = {exhibitData.type}
            imagsrc = {exhibitData.photo} 
            exhibitID = {exhibitData.id}
            creatorID = {exhibitData.creatorID}              
          />
        </Grid>  
      )
    })      
    
    const linkStyle = {
      textDecoration: 'none'
  }
  
  async function searchExhibits(value) {
    const allExhibitsURL = `http://localhost:3003/exhibits?name=${value}`
    console.log(value)
    const data = await fetch(allExhibitsURL)
    .then(res => {
      return res.json();
    })
    .catch((error) => console.log("Error: " + error.message));
    setExhibitData(data);
  }

  return (
    <div>
        <Grid container
          justify="center"
          alignItems="center"
          spacing={2}>
          <Grid item spacing={2} xs={12} alignItems="center">
            <Typography color="textPrimary" variant="h1" component="h1" align="center">
              exhibits.
            </Typography>
          </Grid>
          <Grid item spacing={2} xs={10}>
            <SearchBar
              onCancelSearch={ () => searchExhibits('') }
              onChange={(newValue) => { if(newValue === '')
                                        searchExhibits('')
                                      }
                        }
              onRequestSearch={(value) => {searchExhibits(value)}}
            />
          </Grid>   
          <Grid item spacing={2} xs={12}>         
            <Link style={linkStyle} to="/addexhibit">
              <Typography gutterBottom variant="h5" component="h5" color="textSecondary" align="center">
                are you a museum employee? please click here to add a new exhibit in our database.    
              </Typography>                
            </Link>
          </Grid>
          {listitems}
        </Grid>
    </div>
  )

}

export default CardsContainer;
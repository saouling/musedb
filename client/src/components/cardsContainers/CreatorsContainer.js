import React, { useState, useEffect } from 'react';
import Grid from '@material-ui/core/Grid';
import CreatorCard from '../cards/CreatorCard';
import Typography from '@material-ui/core/Typography';
import SearchBar from "material-ui-search-bar";


function CreatorsContainer() {

  const originalCreator = 
    [
      {
        "name": "Test",
        "bio": "Creator",
        "nationality": "nationality",
        "imagsrc": "https://www.animationvideo.co/wp-content/uploads/2017/12/How-to-video.jpg"
      }
    ]
  
  const [creatorData, setCreatorData] = useState(originalCreator); 
  const [searchText, setSearchText] = useState("");

  console.log(creatorData)

  React.useEffect(() => {
    const querryAllCreatorsURL = 'http://localhost:3003/creators'
    async function fetchCreatorData() {
      var data = await fetch(querryAllCreatorsURL)
      .then(res => {
        return res.json();
      })
      .catch((error) => console.log("Error: " + error.message));
      setCreatorData(data);
      // console.log(creatorData[0]);
    }
    fetchCreatorData();
  }, []);

  async function searchCreators(value) {
    const allCreatorsURL = `http://localhost:3003/creators?name=${value}`
    console.log(value)
    const data = await fetch(allCreatorsURL)
    .then(res => {
      return res.json();
    })
    .catch((error) => console.log("Error: " + error.message));
    setCreatorData(data);
  }

  const listitems = creatorData.map( (creatorData) => 
  {
    return(
      <Grid item spacing={1}>
        <CreatorCard 
          creatorID = {creatorData.id}
          name = {creatorData.name}
          bio = {creatorData.bio.substring(0, 250) + "..."}
          nationality = {creatorData.nationality}
          imagsrc = {creatorData.photo}
        />
      </Grid>  
    )
  })           

  return (
    <div>
        <Grid container
          justify="center"
          alignItems="center"
          spacing={2}>
          <Grid item spacing={2} xs={12} alignItems="center">
            <Typography color="textPrimary" variant="h1" component="h1" align="center">
              creators.
            </Typography>
          </Grid>
          <Grid item spacing={2} xs={10}>
            <SearchBar
              // value={searchText}
              onCancelSearch={ () => searchCreators('') }
              onChange={(newValue) => { if(newValue === '')
                                          searchCreators('')
                                      }
                        }
              onRequestSearch={(value) => {searchCreators(value)}}
            />
          </Grid> 
          {listitems}
        </Grid>
    </div>
  )
}

export default CreatorsContainer;
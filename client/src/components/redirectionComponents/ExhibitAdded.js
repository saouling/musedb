import React from "react";
import Typography from '@material-ui/core/Typography';
import {Link} from 'react-router-dom'

const linkStyle = {
    textDecoration: 'none'
}

function ExhibitAdded() {
 
  return (
    <div style={{ padding: "40px" }}>
        <Typography gutterBottom color="textPrimary" variant="h1" component="h1">
        exhibit added.
        </Typography>
        <Typography gutterBottom variant="h4" component="h4" color="textSecondary" align="right">
          congratulations. what do you want to do next? you could...
        </Typography>   
        <br/>
        <Link style={linkStyle} to="/addexhibit">
            <Typography gutterBottom variant="h5" component="h5" color="textPrimary" align="center">
            add a new exhibit of an exhibition that you manage. 
            </Typography>    
        </Link>
        <br/>
        <Link style={linkStyle} to="/exhibits">
            <Typography gutterBottom variant="h5" component="h5" color="textPrimary" align="center">
            view all the exhibits. 
            </Typography>
        </Link>
        <br/>
        <Link style={linkStyle} to="/addmuseum">
            <Typography gutterBottom variant="h5" component="h5" color="textPrimary" align="center">
            add a new museum that you manage. 
            </Typography>
        </Link>
        <br/>
        <Link style={linkStyle} to="/">
            <Typography gutterBottom variant="h5" component="h5" color="textPrimary" align="center">
            return to museDB homepage. 
            </Typography>         
        </Link>
        <br/> 
    </div>
  );
}

export default ExhibitAdded;

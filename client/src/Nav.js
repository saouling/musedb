import './App.css';
import React from 'react';
import {Link} from 'react-router-dom'
import Typography from '@material-ui/core/Typography';

function Nav() {

    const navStyle = {
        color: 'white',
        textDecoration: 'none'
    }

    return (
    <nav>
        <Link style={navStyle} to="/">
            <Typography gutterBottom variant="h3" component="h1" color="textSecondary">
            museDB
            </Typography>               
        </Link>        
            <ul className = "nav-links">
            <Link style={navStyle} to="/about">
                <Typography gutterBottom variant="h5" component="h1" color="textSecondary">
                about.
                </Typography>               
            </Link>
            <Link style={navStyle} to="/museums">
                <Typography gutterBottom variant="h5" component="h1" color="textSecondary">
                museums.
                </Typography>               
            </Link>
            <Link style={navStyle} to="/exhibits">
                <Typography gutterBottom variant="h5" component="h1" color="textSecondary">
                exhibits.
                </Typography>               
            </Link>
            <Link style={navStyle} to="/creators">
                <Typography gutterBottom variant="h5" component="h1" color="textSecondary">
                creators.
                </Typography>               
            </Link>
       
        </ul>
    </nav>
    );
}



export default Nav;

 



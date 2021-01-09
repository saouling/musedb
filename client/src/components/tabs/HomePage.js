import Container from '@material-ui/core/Container';
import Typography from '@material-ui/core/Typography';
import { Link } from 'react-router-dom'
import SearchBar from "material-ui-search-bar";

function HomePage() {

  return (
    <div style={{ padding: "40px" }}>
      <Container 
        style={{
          backgroundColor: '#E4DFDA'
        }}>
        <Typography color="textPrimary" variant="h1" component="h1" align="center">
          welcome to museDB.     
        </Typography>
        <Typography color="textSecondary" variant="h1" component="h1" align="center">
          welcome to museDB.     
        </Typography>
        <Typography color="primary" variant="h1" component="h1" align="center">
          welcome to museDB.     
        </Typography>
        <br></br>
        <Typography color="textPrimary" variant="h4" component="h1" align="left">
          museDB is a modern app designed for people who love art  
        </Typography>
        <Typography color="textSecondary" variant="h4" component="h1" align="right">
          by people who love art  
        </Typography>
        <br/> <br/>
        <Typography color="textPrimary" variant="h4" component="h1" align="left">
          use the bar at the top to navigate through museums, exhibits, creators.  
        </Typography>
        <Typography color="textSecondary" variant="h4" component="h1" align="right">
          for news about art and info about the museDB application, click on the about tab.  
        </Typography>
      </Container>
    </div>

  );
}

export default HomePage;

 



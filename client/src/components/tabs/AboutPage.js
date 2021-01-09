import Container from '@material-ui/core/Container';
import Typography from '@material-ui/core/Typography';
import { Link } from 'react-router-dom'

function AboutPage() {
    const linkStyle = {
        color: 'white',
        textDecoration: 'none'
    }

  return (
    <div style={{ padding: "40px" }}>
      <Container 
        style={{
          backgroundColor: '#E4DFDA'
        }}>
        <Typography color="primary" variant="h3" component="h1" align="left">
            Art Quote of the Day
        </Typography>
        <Typography color="textPrimary" variant="h1" component="h1" align="left">
            “I dream my painting and I paint my dream.”
        </Typography>
        <Typography color="textSecondary" variant="h1" component="h1" align="right">
            - Vincent van Gogh         
        </Typography>
        <br></br>
        <Typography color="textPrimary" variant="h4" component="h1" align="left">
            
        </Typography>
        <Typography color="textPrimary" variant="h5" component="h1" align="left">
          museDB is an application built using React.js, Node.js, Express and MariaDB.  
        </Typography>
        <Typography color="textSecondary" variant="h5" component="h1" align="left">
          it allows users to navigate through museums from Europe, as well as through the exhibits they demonstrate. Information about the creators are also hosted in our database.
        </Typography>
        <Typography color="textPrimary" variant="h5" component="h1" align="left">
          the museum responsible employees are able to add museums or exhibits from exhibitions the manage, by filling forms.
        </Typography>
        <Typography color="textSecondary" variant="h5" component="h1" align="left">
          more features like "add to artlist" or "reviews" are coming soon to help users save their favourite museums and rate them. 
        </Typography>
        <Typography color="textPrimary" variant="h5" component="h1" align="left">
          for any problems or feedback regarding the applicaiton, please contact the development team.  
        </Typography>
        <br></br>
        <Typography color="textPrimary" variant="subtitle1" component="subtitle1" align="left">
          *museDB is a project for the Databases, School of Engineering, Department of Electrical and Computer Engineering, Aristotle University of Thessaloniki, January 2020.  
        </Typography>
      </Container>
    </div>

  );
}

export default AboutPage;

 



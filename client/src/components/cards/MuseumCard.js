import React from 'react';
import { makeStyles } from '@material-ui/core/styles';
import Card from '@material-ui/core/Card';
import CardActionArea from '@material-ui/core/CardActionArea';
import CardActions from '@material-ui/core/CardActions';
import CardContent from '@material-ui/core/CardContent';
import CardMedia from '@material-ui/core/CardMedia';
import Button from '@material-ui/core/Button';
import Typography from '@material-ui/core/Typography';
import { Link } from 'react-router-dom'

const useStyles = makeStyles({
  root: {
    width: 350,
    height: 485,
    backgroundColor: '#18435A'
  },
  media: {
    height: 260,
    paddingTop: '0%', // 16:9,
    marginTop:'0',
  },
  description : {
    height: 80,
  }
});

export default function MuseumCard(props) {
  const classes = useStyles();

  return (
    <Card className={classes.root}>
      <CardActionArea component={Link} to={`/museums/${props.museumID}`}>
        <CardMedia
          className={classes.media}
          title={props.title}
          component="img"
          src={props.imagsrc}
        />
        <CardContent>
          <Typography gutterBottom variant="h5" component="h2" color="primary">
            {props.title}
          </Typography>
          <Typography variant="body2" color="secondary" component="p" className={classes.description}>
            {props.description} 
          </Typography>
        </CardContent>
      </CardActionArea>
      <CardActions>
        <Button size="small" color="primary">
          ADD TO ARTLIST
        </Button>
      </CardActions>
    </Card>
  );
}

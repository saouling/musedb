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
    width: 280,
    height: 510,
    backgroundColor: '#18435A'
  },
  media: {
    height: 250,
    paddingTop: '0%', // 16:9,
    marginTop:'10',
  },
  description : {
  }
});

export default function ExhibitCard(props) {
  const classes = useStyles();

  return (
    <Card className={classes.root}>
      <CardActionArea component={Link} to={`/exhibits/${props.exhibitID}`} >
        <CardMedia
          className={classes.media}
          title={props.title}
          component="img"
          src={props.imagsrc}
        />
        <CardContent>
          <Typography gutterBottom variant="h5" component="h2" color="primary" align = "right">
            {props.title}
          </Typography>
          <Button size="small" color="secondary" component={Link} to={`/creators/${props.creatorID}`} variant="outlined">
            {props.creator}
          </Button>
          <Typography variant="body1" align = "left" component="h3" color="primary">
            {props.type}
          </Typography>
          <Typography variant="body2" align = "justify" color="secondary" component="p" className={classes.description}>
            {props.description} 
          </Typography>
        </CardContent>
      </CardActionArea>
      <CardActions>

      </CardActions>
    </Card>
  );
}

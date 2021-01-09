import Container from '@material-ui/core/Container';
import CardContainer from '../cardsContainers/MuseumsContainer';

function Museums() {
  const size = {
    width: '100%',
    height: 300,
  };
  const view = 'list'; // or 'coverart'
  const theme = 'black'; // or 'white'

  return (
    <Container 
      style={{
        backgroundColor: '#E4DFDA'
        // backgroundColor: '#16324F'
      }}>
      <CardContainer />
    </Container>
  );
}



export default Museums;

 



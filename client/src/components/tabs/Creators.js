import Container from '@material-ui/core/Container';
import CreatorsContainer from '../cardsContainers/CreatorsContainer';

function Creators() {
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
      }}>
      <CreatorsContainer />
    </Container>
  );
}



export default Creators;

 



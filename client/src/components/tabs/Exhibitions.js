import Container from '@material-ui/core/Container';
import ExhibitsContainer from '../cardsContainers/ExhibitsContainer';

function Exhibitions() {
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
      <ExhibitsContainer />
    </Container>
  );
}



export default Exhibitions;

 



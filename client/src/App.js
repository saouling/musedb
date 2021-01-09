import './App.css';
import Container from '@material-ui/core/Container';
import {BrowserRouter as Router, Switch, Route} from 'react-router-dom'
// Navigation Bar component
import Nav from './Nav'
// Tabs import
import Museums from './components/tabs/Museums'
import Exhibitions from './components/tabs/Exhibitions'
import Creators from './components/tabs/Creators'
import HomePage from './components/tabs/HomePage'
import AboutPage from './components/tabs/AboutPage'
// Pages import
import MuseumPage from './components/singleComponents/MuseumPage'
import ExhibitPage from './components/singleComponents/ExhibitPage'
import CreatorPage from './components/singleComponents/CreatorPage'
// Add components forms import
import AddMuseumPage from './components/forms/AddMuseumPage'
import AddExhibitPage from './components/forms/AddExhibitPage'
// Redirection pages import 
import MuseumAdded from './components/redirectionComponents/MuseumAdded'
import ExhibitAdded from './components/redirectionComponents/ExhibitAdded'



function App() {
  const size = {
    width: '100%',
    height: 300,
  };
  const view = 'list'; // or 'coverart'
  const theme = 'black'; // or 'white'

  return (
    <div>
    <Router>
    <Container 
      style={{
        backgroundColor: '#E4DFDA'
        // backgroundColor: '#16324F'
      }}>
      <Container
      style={{
        backgroundColor: '#E4DFDA'
        // backgroundColor: '#16324F'
      }}>
        <Nav />
      </Container>
      <Switch>
        <Route path="/" exact component={HomePage} />
        <Route path="/about" exact component={AboutPage} /> 
        <Route path="/museums" exact component={Museums} />
        <Route path="/exhibits" exact component={Exhibitions} />
        <Route path="/creators" exact component={Creators} />
        <Route path="/test" component={AddExhibitPage} />
        <Route path="/museums/:id" component={MuseumPage} />
        <Route path="/exhibits/:id" component={ExhibitPage} />
        <Route path="/creators/:id" component={CreatorPage} />
        <Route path="/addmuseum" component={AddMuseumPage} />
        <Route path="/addexhibit" component={AddExhibitPage} />
        <Route path="/museumadded" component={MuseumAdded} /> 
        <Route path="/exhibitadded" component={ExhibitAdded} /> 
      </Switch>
    </Container>
    </Router>
    </div>
  );
}


export default App;

 



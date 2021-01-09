import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import App from './App';
import reportWebVitals from './reportWebVitals';
import { createMuiTheme, ThemeProvider } from "@material-ui/core";

const theme = createMuiTheme({   
  palette: {      
    primary: {         
      // main: "#FF570A" 
      main: "#C1666B"
      // This is an orange looking color                
    },      
    secondary: {
      main: "#E4DFDA"         
      // main: "#ffcc80" //Another orange-ish color                 
    },
    text: {
      // primary: "#E6EBE0",
      // secondary: "#D7DFCD"
      primary: "#18435A",
      secondary: "#7d4e57"
    }            
  },
  typography: {
    fontFamily: ['Vollkorn', '"Abril Fatface"', 'Open Sans'].join(','), 
      h1: {
        fontFamily: ['Vollkorn', '"Abril Fatface"', 'Open Sans'].join(',')
      },
      h5: {
        fontFamily: ['Vollkorn', '"Abril Fatface"', 'Open Sans'].join(',')
      }
    }
  });

ReactDOM.render(
  <ThemeProvider theme={theme}>
    <App />
  </ThemeProvider>
  ,document.getElementById("root"));

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals();

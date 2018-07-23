import React from 'react';
import ReactDOM from 'react-dom';
import PropTypes from 'prop-types';
import { AppContainer } from 'react-hot-loader';

const Home = props => (
  <AppContainer>
    <div>Hello {props.name}!</div>
  </AppContainer>
);

Home.defaultProps = {
  name: 'Jaryd'
};

Home.propTypes = {
  name: PropTypes.string
};

export default Home;

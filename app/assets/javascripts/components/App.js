import PropTypes from 'prop-types';
import React from 'react';
import { hot } from 'react-hot-loader';

import Navigation from './shared/Navigation';
import Home from './Home';

const App = props => (
    <div>
      <Navigation />
      <div className="container">
        <div className="row">
          <Home />
        </div>
      </div>
      <div className="row">
      </div>
    </div>
);

export default hot(module)(App);

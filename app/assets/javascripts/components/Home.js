import axios from 'axios';
import React, { Component } from 'react';

export default class Home extends Component {
  constructor(props) {
    super(props);
    this.state = {
      error: false,
      loading: true,
      types: [],
    }
  }

  componentDidMount() {
    axios.get('/api/drug_types').then(response => {
      console.log(response);
      this.setState({ loading: false });
      this.setState({ types: response.data });
    }).catch(error => {
      console.error(error);
      this.setState({ error: true });
    });
  }

  render() {
    const { error, loading, types } = this.state;
    return (
      <div className="col-12">
        {error && (
          <p className="alert alert-danger">Error</p>
        )}
        <h1>These are all the drug types</h1>
        {loading && (
          <p className="lead">LOADING...</p>
        )}
        <ul>
          {types.map(type => (<li key={type.id}>{type.name}</li>))}
        </ul>
      </div>
    );
  }
}

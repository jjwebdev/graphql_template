import React from 'react';
import ReactDOM from 'react-dom';
import App from './App';
import './index.css';
import ApolloClient, { createNetworkInterface } from 'apollo-client';
import { ApolloProvider } from 'react-apollo';
const client = new ApolloClient({
  networkInterface: createNetworkInterface({ uri: 'http://localhost:4000/api' }),
});

ReactDOM.render(
  <ApolloProvider client={client}>
    <App />
  </ApolloProvider>,
  document.getElementById('root')
);



import React from 'react';
import axios from 'axios';
import SearchResultList from './SearchResultList';

export default class Search extends React.Component {
  state = { loading: false, results: [] };

  onChange = (e) => {
    const { value } = e.target;
    this.setState({ loading: true });
    if (value.length > 0) {
      axios.get('/search.json', { params: { query: value } })
        .then(res => this.setState({ loading: false, results: res.data }))

    } else {
      this.setState({ loading: false, results: [] });
    }
  }

  render() {
    const { loading, results } = this.state;
    return (


        <form className='navbar-form' method="GET" action="search">
           <div className='input-group'>
            <input className="form-control" name="query" type="text" label= "jean" placeholder="E.T l'extraterrestre..." onChange={this.onChange} autoComplete="off" />
            <span className="input-group-btn">
            <button type="submit" className="btn btn-green">
              <i className="fas fa-search" ></i>
            </button>
            </span>
            </div>
{results.length > 0 || loading ? <SearchResultList results={results} loading={loading} /> : null}
        </form>


    );
  }
}















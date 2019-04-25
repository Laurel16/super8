
import React, { Component } from 'react';
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'

export default class Search extends React.Component {
  render() {
    return (
      <div className="container">
        <form className="form-inline" method="GET" action="search">

            <input className="form-control form-control-sm ml-3 w-75" name="query" type="text" placeholder="Search apps..." autoComplete="off" />
            <button type="submit">
              <i className="fas fa-search" aria-hidden="true"></i>
            </button>

        </form>
      </div>
    );
  }
}

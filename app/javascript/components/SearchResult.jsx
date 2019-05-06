import React from 'react';

export default ({ result }) => (
  <a className="item" href={`/movies/${result.id}`}>
    <div className="middle aligned content">
      <div className="header">{result.name}</div>
      <div className="meta">{result.director}</div>
    </div>
  </a>
);

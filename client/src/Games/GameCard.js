import React from "react"

const GameCard = ({ game }) => {
  const { id, title, year, developer, cover_art_url } = game
  return(
    <div className="game-card">
      <h1 className="title" >{title}</h1>
      <img src={cover_art_url} alt={`${title} cover art`} className="cover-art"/>
      <p className="year" >{year}</p>
      <p className="developer" >{developer}</p>
    </div>
  )
}

export default GameCard

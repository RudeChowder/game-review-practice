import React from "react"
import GameCard from "./GameCard"

const GamesList = ({ games }) => {

  return(
    <div className="game-list">
      {games.map(game => {
        return <GameCard id={game.id} game={game} />
      })}
    </div>
  )
}

export default GamesList

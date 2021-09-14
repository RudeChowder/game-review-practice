import React, { useEffect, useState } from "react"
import GamesList from "./GamesList"

const GamesPage = () => {
  const [games, setGames] = useState([])
  useEffect (() => {
    fetch("/games")
    .then(resp => resp.json())
    .then(gamesData => setGames(gamesData))
  }, [])

  return(
    <div>
      <GamesList games={games}/>
    </div>
  )
}

export default GamesPage

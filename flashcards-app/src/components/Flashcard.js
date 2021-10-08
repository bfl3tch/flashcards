import React, { useState } from 'react'

const Flashcard = ({ flashcard }) => {
  const [flip, setFlip] = useState(false)

  return (
    <div className={`card ${flip ? 'flip' : ''}`} onClick={() => setFlip(!flip)}>
      <div className="front">
        <p>{flashcard.category}</p>
        <p>{flashcard.question}</p>
      </div>
      <div className="back">
        <p className="answer">{flashcard.answer}</p>
      </div>
    </div>
  )
}

export default Flashcard

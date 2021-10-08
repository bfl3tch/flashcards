import React, { useState, useEffect } from 'react'
import FlashcardList from './components/FlashcardList'
import './App.css'
import axios from 'axios'

function App() {
  const [cards, setCards] = useState([])

  useEffect(() => {
    axios.get('http://localhost:3000/api/v1/flashcards')
    .then(res => {
      setCards(res.data.data.map((item) => {
        return {
          category: decodeString(item.attributes.category),
          question: decodeString(item.attributes.question),
          answer: decodeString(item.attributes.answer)
        }
      }))
    })
  }, [cards])

  // on click actions - next (disable if array.length = max) (use setstate to update) and back(disable if 0)
  // on submit action - submit form to rails, async await return, compare answer, return wrong/right
  // toaster - successful/unsuccessful

  function decodeString(str) {
    const textArea = document.createElement('textarea')
    textArea.innerHTML = str
    return textArea.value
  }

  return (
    <FlashcardList flashcards={cards} />
  );
}

const SAMPLE_CARDS = [
  {
    id: 1,
    question: 'What is 3 + 3 ?',
    answer: '6',
    options: ['2', '3', '8', '6']
  },
  {
    id: 2,
    question: 'What is 4 + 4 ?',
    answer: '8',
    options: ['2', '3', '8', '6']
  },
  {
    id: 3,
    question: 'What is 5 + 1 ?',
    answer: '6',
    options: ['2', '3', '8', '6']
  },
  {
    id: 4,
    question: 'What is 1 + 1 ?',
    answer: '2',
    options: ['2', '3', '8', '6']
  },

]
export default App;

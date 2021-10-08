import React, { Component } from 'react'
import axios from 'axios'

class FlashcardsContainer extends Component {
  constructor(props) {
    super(props)
    this.state = {
      flashcards: [
        { question: 'what?',
          answer: 'because'
        }
      ]
    }
  }

  getFlashcards() {
    axios.get('/api/v1/flashcards')
    .then(response => {
      this.setState({flashcards: response.data})
    })
    .catch(error => console.log(error))
  }

  componentDidMount() {
    this.getFlashcards()
  }

    render() {
      return (
        <div>
          <div className="inputContainer">
            <input className="FlashcardInput" type="text"
              placeholder="Add a flashcard" maxLength="50"
              onKeyPress={this.createFlashcard} />
          </div>
  	<div className="listWrapper">
  	   <ul className="flashcardList">
  		  {this.state.flashcards.map((flashcard) => {
  		    return(
  		      <li className="task" flashcard={flashcard} key={flashcard.id}>
  			<input className="taskCheckbox" type="card" />
  			<label className="taskLabel">{flashcard.question}</label>
  			<span className="deleteTaskBtn">x</span>
  		      </li>
  		    )
  		  })}
  	   </ul>
  	</div>
       </div>
      )
    }
  }


export default FlashcardsContainer

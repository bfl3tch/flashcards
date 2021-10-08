[![Contributors][contributors-shield]][contributors-url]
[![Issues][issues-shield]][issues-url]
[![Stargazers][stars-shield]][stars-url]
[![Forks][forks-shield]][forks-url]
![Version][version-badge]

##### A ReSTful, JSON 1.0 compliant API built in Rails behind a React FE

<img src="https://media2.giphy.com/media/pjMj7ztdPyd1UvwfwV/giphy.gif?cid=790b76112ce57441cb36a2eb5126d8eddfa8c60148a52272&rid=giphy.gif&ct=g" height="70%" width="70%"/>
<img src="https://user-images.githubusercontent.com/74567704/136487889-aa9de81e-853a-4f8c-8ae4-e3127f7982db.png" />

## Table of Contents

- [Contributors](#contributors)
- [Overview](#overview)
- [Tools Utilized](#frameworks)
- [Project Configurations](#setup)
- [Exposed Endpoints](#endpoints)

------

### <ins>Contributors</ins>


👤  **Brian Fletcher**
  
  <a href="https://www.linkedin.com/in/bfl3tch"><img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white"></a>
  <a href="https://github.com/bfl3tch"><img src="https://img.shields.io/badge/GitHub-000000?style=for-the-badge&logo=GitHub&logoColor=white"></a>

------

### <ins>Overview</ins>

Flash Cards - The challenge was to build a fully functional [JSON API 1.0 spec](https://jsonapi.org/)-compliant REST API that has a React FE allowing users to interact with their flashcards in accordance with the guidelines outlined in the tech challenge.

Learning goals and areas of focus consisted of:

- Create a ReST API for the back end
- Focus on developing React knowledge to present a front end allowing for users to utilize their flash cards

[Technical Requirements](https://backend.turing.edu/module3/projects/sweater_weather/requirements)

#### <ins>Frameworks</ins>
<p>
  <img src="https://img.shields.io/badge/Ruby%20On%20Rails-b81818.svg?&style=flat&logo=rubyonrails&logoColor=white" />
   <img src="https://badges.aleen42.com/src/react.svg" />
 
</p>

#### Languages
<p>
  <img src="https://img.shields.io/badge/Ruby-CC0000.svg?&style=flaste&logo=ruby&logoColor=white" />
  <img src="https://badges.aleen42.com/src/javascript.svg" />
  <img src="https://img.shields.io/badge/CSS-0077B5?style=for-the-badge&logo=CSS&logoColor=blue">
</p>

#### Tools
<p>
  <img src="https://img.shields.io/badge/Atom-66595C.svg?&style=flaste&logo=atom&logoColor=white" />  
  <img src="https://img.shields.io/badge/Git-33b818.svg?&style=flaste&logo=git&logoColor=white" />
  <img src="https://img.shields.io/badge/GitHub-181717.svg?&style=flaste&logo=github&logoColor=white" />
  <img src="https://img.shields.io/badge/Postman-f74114.svg?&style=flat&logo=postman&logoColor=white" />
</p>

#### Gems
<p>
  <img src="https://img.shields.io/badge/rspec-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />
  <img src="https://img.shields.io/badge/pry-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />  
  <img src="https://img.shields.io/badge/simplecov-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />  
  <img src="https://img.shields.io/badge/shoulda--matchers-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />  
  </br>
  <img src="https://img.shields.io/badge/factory--bot-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />
  <img src="https://img.shields.io/badge/faker-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />  
  </br>
  <img src="https://img.shields.io/badge/faraday-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />
  <img src="https://img.shields.io/badge/figaro-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />
</p>

#### Development Principles
<p>
  <img src="https://img.shields.io/badge/OOP-b81818.svg?&style=flaste&logo=OOP&logoColor=white" />
  <img src="https://img.shields.io/badge/TDD-b87818.svg?&style=flaste&logo=TDD&logoColor=white" />
  <img src="https://img.shields.io/badge/MVC-b8b018.svg?&style=flaste&logo=MVC&logoColor=white" />
  <img src="https://img.shields.io/badge/REST-33b818.svg?&style=flaste&logo=REST&logoColor=white" />  
</p>


## <ins>Setup</ins>

This project requires Ruby 2.7.2, Rails 5.2.6.

* Fork this repository
* Install gems and set up your database:
    * `bundle`
    * `rails db:{drop,create,migrate,seed}`
* Run the test suite with `bundle exec rspec -fd`
* Run your development server with `rails s`


### Project Configurations

* Ruby Version
    ```bash
    $ ruby -v
    ruby 2.7.2p137 (2020-10-01 revision 5445e04352) [x86_64-darwin20]
    ```

* [System Dependencies](https://github.com/bfl3tch/flashcards/blob/main/Gemfile)
    ```bash
    $ rails -v
    Rails 5.2.6
    ```

* Database Creation
    ```bash
    $ rails db:{drop,create,migrate,seed}
    Created database 'sweater_weather_development'
    Created database 'sweater_weather_test'
    ```

* How to Run the Test Suite
    ```bash
    $ bundle exec rspec -fd
    ```

* [Local Deployment](http://localhost:3000), for testing:
    ```bash
    $ rails s
    => Booting Puma
    => Rails 5.2.6 application starting in development
    => Run `rails server -h` for more startup options
    Puma starting in single mode...
    * Version 3.12.6 (ruby 2.7.2-p137), codename: Llamas in Pajamas
    * Min threads: 5, max threads: 5
    * Environment: development
    * Listening on tcp://localhost:3000
    Use Ctrl-C to stop
    ```

## Endpoints

The `base path` of each endpoint in <strong><u>development/testing</u></strong> is:

```
http://localhost:3000/api/v1
```

- For `GET` requests, you can send the endpoint requests through your internet browser, or utilize an API client (i.e. [Postman](https://www.postman.com/))
- For `POST` requests, you will need to use an API client to provide the required request body
- A fully functional [Postman collection](https://github.com/bfl3tch/road-trip-weather/blob/main/spec/postman_collections/SweaterWeatherDemo.postman_collection.json) is included with this repository, to further assist with UAT and endpoint exploration


The following table presents each API endpoint and its associated documentation
- For `GET` requests, an example link is provided for demonstration purposes  

# Flashcard Endpoints

## Get Flashcards

Get all flashcards regardless of category.

```
GET /flashcards
```

### Example Request

```
GET http://localhost:3000/api/v1/flashcards
```

### Example Response

```
Status: 200 OK
```

```
{
    "data": [
        {
            "id": "1",
            "type": "flashcard",
            "attributes": {
                "category": "languages",
                "question": "How do you say hello in Spanish?",
                "answer": "hola"
            }
        },
        {
            "id": "2",
            "type": "flashcard",
            "attributes": {
                "category": "languages",
                "question": "How do you say goodbye in Spanish?",
                "answer": "adios"
            }
        },
        {
            "id": "3",
            "type": "flashcard",
            "attributes": {
                "category": "languages",
                "question": "How do you say goodbye in French?",
                "answer": "au revoir"
            }
        },
        {
            "id": "4",
            "type": "flashcard",
            "attributes": {
                "category": "languages",
                "question": "How do you say hello in French?",
                "answer": "bonjour"
            }
        },
        {
            "id": "5",
            "type": "flashcard",
            "attributes": {
                "category": "math",
                "question": "What is 1+1?",
                "answer": "2"
            }
        },
        {
            "id": "6",
            "type": "flashcard",
            "attributes": {
                "category": "math",
                "question": "What is 10+10?",
                "answer": "20"
            }
        },
        {
            "id": "7",
            "type": "flashcard",
            "attributes": {
                "category": "math",
                "question": "What is 10+100?",
                "answer": "110"
            }
        },
        {
            "id": "8",
            "type": "flashcard",
            "attributes": {
                "category": "math",
                "question": "What is 100+100?",
                "answer": "200"
            }
        },
        {
            "id": "9",
            "type": "flashcard",
            "attributes": {
                "category": "languages",
                "question": "Como se dice hola in ingles?",
                "answer": "hello"
            }
        },
        {
            "id": "10",
            "type": "flashcard",
            "attributes": {
                "category": "languages",
                "question": "How do you say player in Spanish?",
                "answer": "jugador"
            }
        },
        {
            "id": "11",
            "type": "flashcard",
            "attributes": {
                "category": "languages",
                "question": "How do you say soccer in Spanish?",
                "answer": "futbol"
            }
        }
    ]
}
```

## Get a flashcard

Get one flashcard

```
GET /flashcards/1
```

### Example Request

```
GET http://localhost:3000/api/v1/flashcards/1
```

### Example Response

```
{
    "data": {
        "id": "1",
        "type": "flashcard",
        "attributes": {
            "category": "languages",
            "question": "How do you say hello in Spanish?",
            "answer": "hola"
        }
    }
}
```

## Create a flashcard

Get one flashcard

```
POST /flashcards
```

### Example Request

```
POST http://localhost:3000/api/v1/flashcards

params: { flashcard: { category: "languages", question: "How do you say hello in Spanish?", answer: "hola" } }
```

### Example Response

```
{
    "data": {
        "id": "1",
        "type": "flashcard",
        "attributes": {
            "category": "languages",
            "question": "How do you say hello in Spanish?",
            "answer": "hola"
        }
    }
}
```

## Update a flashcard

Get one flashcard

```
PATCH /flashcards/1
```

### Example Request

```
PATCH http://localhost:3000/api/v1/flashcards/1

params: { flashcard: { answer: "buen día" } }
```

### Example Response

```
{
    "data": {
        "id": "1",
        "type": "flashcard",
        "attributes": {
            "category": "languages",
            "question": "How do you say hello in Spanish?",
            "answer": "buen día"
        }
    }
}
```

## Delete a flashcard

Get one flashcard

```
DELETE /flashcards/1
```

### Example Request

```
DELETE http://localhost:3000/api/v1/flashcards/1

```

<!-- MARKDOWN LINKS & IMAGES -->

[contributors-shield]: https://img.shields.io/github/contributors/bfl3tch/flashcards.svg?style=flat
[contributors-url]: https://github.com/bfl3tch/flashcards/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/bfl3tch/flashcards.svg?style=flat
[forks-url]: https://github.com/bfl3tch/flashcards/network/members
[stars-shield]: https://img.shields.io/github/stars/bfl3tch/flashcards.svg?style=flat
[stars-url]: https://github.com/bfl3tch/flashcards/stargazers
[issues-shield]: https://img.shields.io/github/issues/bfl3tch/flashcards.svg?style=flat
[issues-url]: https://github.com/bfl3tch/flashcards/issues
[version-badge]: https://img.shields.io/badge/API_version-V1-or.svg?&style=flat&logoColor=white

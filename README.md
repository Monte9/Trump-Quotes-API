# Trump Quotes API

This API serves as a source for all quotes that were said by Trump or not. 

*It's pretty strighforward:* the API returns quotes with (string) **statement** and (boolean) **is_valid**. The statements are quotes and the is_valid boolean flag indicates whether the quote was said by Trump or not.

# How to use it

* **Method:**

  `GET`

* **Base URL**

  * **url:** https://trump-quote.herokuapp.com/api/v1/quotes/all <br />
    **description:** returns all quotes in the database

*  **Specific URL's**

  * **url:** https://trump-quote.herokuapp.com/api/v1/quotes/true <br />
    **description:** returns only quotes that trump has said *(is_valid: true)*
  
  * **url:** https://trump-quote.herokuapp.com/api/v1/quotes/false <br />
    **description:** returns only quotes that trump has not said *(is_valid: false)*

* **Success Response:**

  * **status:** 200 <br />
    **content:** `{ statement: "My message isn't perfectly defined. I have, as a human being, fallen to peer pressure.", is_valid: false }`

* **Error Response:**

  * **status:** 400 <br />
    **content:** `"Bad Request"`

# Sample Call
  
  * **url:** https://trump-quote.herokuapp.com/api/v1/quotes/true <br />
    **response:**
```javascript
{
    status: 200,
    content: [
        {
            id: 1,
            statement: "You know, it really doesn’t matter what the media write as long as you’ve got a young, and beautiful, piece of ass.",
            is_valid: true,
            created_at: "2016-08-27T06:31:53.152Z",
            updated_at: "2016-08-27T06:31:53.152Z"
        }
    ]
}
```
  
# Use Cases

1. [Trump Or False (iOS App)](https://github.com/Monte9/trumporfalse): How well do you know our Republican Party nominee? Test your knowledge through Trump or False, a game in which you earn points for correctly identifying whether or not Trump said certain things. You have five seconds to classify whether Trump actually said the quote (true) or he didn't (false). The game ends if you get an answer wrong, or run out of time. Good luck!

# About

This API is maintained by [Monte Thakkar](https://github.com/monte9/). Feel free to submit a PR or raise an issue.

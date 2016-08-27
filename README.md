****
----
# Trump Quotes API

This API serves as a source for all quotes that were said by Trump or not. 

*It's pretty strighforward:* the API returns quotes with **(string)statement** and **(boolean)is_valid**. The statements are quotes and the is_valid boolean flag indicates whether the quote was said by Trump or not.

# How to use it

* **Method:**

  `GET`

* **Base URL**

  http://localhost:3000/api/v1/quotes/all

*  **Specific URL's**

  api/v1/quotes/true
  
  api/v1/quotes/false

* **Success Response:**

  * **status:** 200 <br />
    **content:** 
```javascript
{ id: 1,
statement: "You know, it really doesn’t matter what the media write as long as you’ve got a young, and beautiful, piece of ass.",
is_valid: true,
created_at: "2016-08-27T06:31:53.152Z",
updated_at: "2016-08-27T06:31:53.152Z" }
```



* **Error Response:**

  * **Code:** 404 NOT FOUND <br />
    **Content:** ````{ error : "User doesn't exist" }
sdf
Sdf <br />
sdf````

  OR

  * **Code:** 401 UNAUTHORIZED <br />
    **Content:** `{ error : "You are unauthorized to make this request." }`

* **Sample Call:**

  ```javascript
    $.ajax({
      url: "/users/1",
      dataType: "json",
      type : "GET",
      success : function(r) {
        console.log(r);
      }
    });
  ```
  
# Use Cases

1. [Trump Or False (iOS App)](https://github.com/Monte9/trumporfalse): How well do you know our Republican Party nominee? Test your knowledge through Trump or False, a game in which you earn points for correctly identifying whether or not Trump said certain things. You have five seconds to classify whether Trump actually said the quote (true) or he didn't (false). The game ends if you get an answer wrong, or run out of time. Good luck!

# About

This API is mainted by @monte9. Feel free to submit a PR or raise issues.

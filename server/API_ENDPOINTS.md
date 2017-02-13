**Search Products**

* **URL**

  /api/1.0/product

* **Method:**
  
  `GET`
  
* **URL Params**

  **Required:**
 
  `location=[string]`

  **Optional:**
 
  `query=[string]`
  `northeastBound=[number]` This comes from the Google Maps API getBounds() function
    https://developers.google.com/maps/documentation/javascript/reference#Map
  `southwestBound=[number]` This comes from the Google Maps API getBounds() function
    https://developers.google.com/maps/documentation/javascript/reference#Map
  `category=[string]`
  `type=[string]`
  `brand=[string]`
  `minPrice=[number] default: 0`
  `maxPrice=[number]`
  `minStock=[number] default: 0`
  `maxStock=[number]`
  `orderByField=[string] default: 'name'`
  `orderAscending=[number] default: 1`
  `page=[number] default: 0`
  `limit=[number] default: 20`

* **Success Response:**
  
  <_What should the status code be on success and is there any returned data? This is useful when people need to to know what their callbacks should expect!_>

  * **Code:** 200 <br />
    **Content:** `{ id : 12 }`
 
* **Error Response:**

  <_Most endpoints will have many ways they can fail. From unauthorized access, to wrongful parameters etc. All of those should be liste d here. It might seem repetitive, but it helps prevent assumptions from being made where they should be._>

  * **Code:** 401 UNAUTHORIZED <br />
    **Content:** `{ error : "Log in" }`

  OR

  * **Code:** 422 UNPROCESSABLE ENTRY <br />
    **Content:** `{ error : "Email Invalid" }`

* **Sample Call:**

  <_Just a sample call to your endpoint in a runnable format ($.ajax call or a curl request) - this makes life easier and more predictable._> 

* **Notes:**

  <_This is where all uncertainties, commentary, discussion etc. can go. I recommend timestamping and identifying oneself when leaving comments here._> 
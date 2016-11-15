# User API

## `GET /users`

**Authentication:**

- Authorization: Token token={your token}

**Response:**
- Status Code: 200

Sample Response: 

```json
{
	"first_name": "Bob",
	"last_name": "Jones",
	"username": "bjones",
	"email": "bjones@gmail.com"
}
```

## `POST /users`

**Body Parameters:** 

- first_name: *String*
- last_name: *String*
- username: *String*
- email: *String*

- Status Code: 201

Sample Response: 

```json
{
	"first_name": "Bob",
	"last_name": "Jones",
	"username": "bjones",
	"email": "bjones@gmail.com"
}
```

## `GET /user/:id`

**Response:**
- Status Code: 200

Sample Response: 

```json
{
	"first_name": "Bob",
	"last_name": "Jones",
	"username": "bjones",
	"email": "bjones@gmail.com"
}
```


## `EDIT /user/:id/edit`

**Response:**
- Status Code: 200

Sample Response: 

```json
{
	"first_name": "Bob",
	"last_name": "Jones",
	"username": "bjones",
	"email": "bjones@gmail.com"
}
```

## `PUT /user/:id`

**Body Parameters:** 

- first_name: *String*
- last_name: *String*
- username: *String*
- email: *String*


**Response:**
- Status Code: 204

Sample Response: 

```json
{
	success: "User updated successfully"}, status: 204
}
```

## `DELETE /user/:id`

**Response:**
- Status Code: 204

Sample Response: 

```json
{
	success: "User destroyed successfully"}, status: 204
}
```
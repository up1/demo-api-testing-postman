# Workshop API testing with Postman
* REST API with go
* Database => PostgreSQL
* API testing with Postman and newman
* Mock database with Docker

## Step to start demo project
```
$docker compose build
$docker compose up -d
$docker compose ps
NAME                IMAGE               COMMAND                  SERVICE             CREATED             STATUS                    PORTS
go-api-api-1        go-api-api          "./api"                  api                 5 minutes ago       Up 6 seconds              0.0.0.0:8080->8080/tcp
go-api-db-1         postgres:13         "docker-entrypoint.s…"   db                  8 minutes ago       Up 17 seconds (healthy)   0.0.0.0:5432->5432/tcp

$docker compose logs --follow
```

## List of APIs
* Run on port = 8080

### Login
```
POST /login

Response=200
{
    "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2OTU0ODA0Mjh9.B-Czw0BlJU1ve2kMnYgDM3IbH89sROahgZQak5IxcOU"
}
```

### Upload file
```
POST /upload
Content-Type: multipart/form-data
form-data
* file=data.txt

Response=200
'data.txt' uploaded!
```

### Manage book

Get all books
```
GET /books
Authorization: Bearer <token>

Response=200
[
    {
        "id": "1",
        "title": "title 01",
        "author": "author 01"
    },
    {
        "id": "2",
        "title": "test title 2",
        "author": "test author 2"
    }
]
```

Create a new book
```
POST /books
Authorization: Bearer <token>

Body
{
    "id": "4",
    "title": "test title 4",
    "author": "test author 4"
}

Response=200
{
    "id": "4",
    "title": "test title 4",
    "author": "test author 4"
}
```

Delete book by id
```
DELETE /books
Authorization: Bearer <token>

Response=204
```

## Run API testing with Docker
* Postman
* Newman
```
$rm -rf report/
$docker compose up api_test --abort-on-container-exit --build
```

## Run Mock API Server with Docker
* [Stubby4Node](https://github.com/mrak/stubby4node)
```
$docker compose up -d mock-api --build
```

Access with URL
* http://localhost:8882/users/1



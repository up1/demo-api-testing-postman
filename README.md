# Workshop API testing with Postman
* REST API with go
* Database => PostgreSQL

## Step to start demo project
```
$docker compose build
$docker compose up -d
$docker compose ps
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

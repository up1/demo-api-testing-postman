# Workshop API testing with Postman
* REST API with go
* Database => PostgreSQL

## Step to start demo project
```
$docker compose build
$docker compose up -d
$docker compose ps
NAME                IMAGE               COMMAND                  SERVICE             CREATED             STATUS                    PORTS
go-api-api-1        go-api-api          "./api"                  api                 5 minutes ago       Up 6 seconds              0.0.0.0:8080->8080/tcp
go-api-db-1         postgres:13         "docker-entrypoint.s…"   db                  8 minutes ago       Up 17 seconds (healthy)   0.0.0.0:5432->5432/tcp
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

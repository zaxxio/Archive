# spring-boot3-liquibase-postgresSQL
## Requirements
- Maven 3+
- Java 17
- PostgreSQL DB

## Dependency
- Spring Boot 3.1.2

## Docker for postgreSQL
```
docker run -d --name postgres -e POSTGRES_USER=admin -e POSTGRES_PASSWORD=admin -v postgres_data:/var/lib/postgresql/data -p 5432:5432 postgres
```

## Start the service
```
mvn spring-boot:run
```
## Update Liquibase
```
mvn liquibase:update
```
## Rollback Liquibase
```
mvn liquibase:rollback -Dliquibase.rollbackCount=1
```
## add context parameter
```
mvn liquibase:update -Dliquibase.contexts=test
mvn liquibase:rollback -Dliquibase.rollbackCount=1 -Dliquibase.contexts=test
```
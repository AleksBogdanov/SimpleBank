migrateup:
	migrate -path db/migration -database "postgresql://postgres:postgres@localhost:5432/SimpleBank?sslmode=disable" --verbose up

migratedown:
	migrate -path db/migration -database "postgresql://postgres:postgres@localhost:5432/SimpleBank?sslmode=disable" --verbose down

test:
	go test -v -cover ./...

sqlc:
	sqlc generate
.PHONY: creatdb dropdb migrateup migratedown
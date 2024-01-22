-- name: CreateAccount :one
INSERT INTO accounts (
  owner, 
  balance, 
  currency
) VALUES (
  $1, $2, $3
)
RETURNING *;

-- name: GetAuthor :one
SELECT * FROM accounts
WHERE id = $1 LIMIT 1;

-- name: ListAuthors :many
SELECT * FROM accounts
ORDER BY id
LIMIT $1
OFFSET $2;



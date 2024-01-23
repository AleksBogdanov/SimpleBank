package db

import (
	"context"
	"database/sql"
)

// Store provides all functions to execute db queries and transactions
type Store struct {
	*Queries
	db *sql.DB
}

// Newstore creates a New store
func NewStore(db *sql.DB) *Store {

	return &Store{
		db: db,
		Queries: New(db),
		
	}
}

// execTx executes a function within a database transaction
func (store *Store) execTx(ctx context.Context, fn func(*Queries) error) error {
	tx, err := store.db

}

package handler

import (
	"encoding/json"
	"net/http"
)

type Handler struct{}

func New() *Handler {
	return &Handler{}
}

func (h *Handler) ServeHTTP(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "application/json")
	json.NewEncoder(w).Encode(map[string]string{
		"message": "menu API",
		"version": "1.0.0",
	})
}

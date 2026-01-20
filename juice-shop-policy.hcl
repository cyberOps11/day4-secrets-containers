# Policy for Juice Shop Production
# Permet READ sur secrets, pas de DELETE
path "secret/data/juice-shop/prod" {
 capabilities = ["read", "list"]
}
path "secret/metadata/juice-shop/prod" {
 capabilities = ["read", "list"]
}
# Deny destructive operations
path "secret/data/juice-shop/prod" {
 capabilities = ["delete", "create", "update"]
 policy = "deny"
}

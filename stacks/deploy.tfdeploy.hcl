store "varset" "tokens" {
  name = "AWS key"
  category = "env"              # credentials
}


deployment "dev" {
  
  inputs = {
    access_key    = store.varset.tokens.AWS_ACCESS_KEY_ID
    secret_key    = store.varset.tokens.AWS_SECRET_ACCESS_KEY

  }
}
resource "aws_cognito_user_pool" "users" {
    name = "app-users"

    deletion_protection = "ACTIVE"

    auto_verified_attributes = [ "email" ]
    username_attributes = [ "email" ]

    email_verification_subject = "Creature Comforts verification code"
    email_verification_message = "Your Creature Comforts verification code is {####}"

    password_policy {
      minimum_length = 8
      require_lowercase = false
      require_numbers = false
      require_symbols = false
      require_uppercase = false

    }
    schema {
      attribute_data_type = "String"
      developer_only_attribute = false
      mutable = true
      name = "email"
      required = true
      string_attribute_constraints {
        min_length = 5
        max_length = 256
      }
    }

    
}
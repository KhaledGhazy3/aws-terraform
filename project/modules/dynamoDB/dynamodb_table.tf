resource "aws_dynamodb_table" "dynamodb" {
  name           = "my-dynamo"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "id"

  attribute {
    name = "id"
    type = "S"
  }

  attribute {
    name = "other_attribute"
    type = "S"
  }

  global_secondary_index {
    name               = "my-gsi"
    hash_key           = "other_attribute"
    projection_type    = "ALL"  
  }
}
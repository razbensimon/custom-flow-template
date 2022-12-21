resource "null_resource" "null" {
  count = tonumber(nonsensitive(data.env_variable.count_nulls.value)) > 1 ? tonumber(nonsensitive(data.env_variable.count_nulls.value)) : 1
}

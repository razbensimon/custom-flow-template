resource "null_resource" "null" {
    count = tonumber(data.env_variable.count_nulls.value) > 1 ? tonumber(data.env_variable.count_nulls.value) : 1
}

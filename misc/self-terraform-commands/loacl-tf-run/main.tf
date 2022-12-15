resource "null_resource" "null" {
    count = data.env_variable.count_nulls.value ? data.env_variable.count_nulls.value : 1
}

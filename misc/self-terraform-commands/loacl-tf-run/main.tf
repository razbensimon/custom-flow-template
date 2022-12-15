resource "null_resource" "null" {
    count = data.env_variable.count_nulls.value > 1 ? data.env_variable.count_nulls.value : 1
}

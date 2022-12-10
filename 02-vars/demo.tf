variable "sample" {
    default = "Hello World"  
}

output "Val" {
    value = var.sample
  }
  output "Val2" {
    value = "Value is ${var.sample}"
  }
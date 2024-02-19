variable "teams" {
  type = list(object({
    name  = string
    stack = string
  }))
  validation {
    condition     = alltrue([for team in var.teams : contains(["dotnet", "java", "go", "php", "nodejs", "python"], team.stack)])
    error_message = "stack must be one of: dotnet"
  }
}

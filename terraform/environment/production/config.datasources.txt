variable "datasources" {
  description = "Map of database objects necessary for integration."
  type        = map(any)
  default = {
    raw = {
      name    = "RAW"
      comment = "This database stores raw data."
      schemas = {
        events = {
          name    = "EVENTS"
          comment = "This schema stores raw EVENTS data."
          tables = {}
        }
      }
    },
    analytics = {
      name    = "ANALYTICS"
      comment = "This database stores transformed data for analytics."
      schemas = {
        staging = {
          name    = "STAGING"
          comment = "This schema stores flattened raw data."
          tables = {}
        },
        intermediate = {
          name    = "INTERMEDIATE"
          comment = "This schema stores intermediate transformed data."
          tables = {}
        }
        mart = {
          name    = "MART"
          comment = "This schema stores transformed and analytics-ready data."
          tables = {}
        }
      }
    }
  }
}

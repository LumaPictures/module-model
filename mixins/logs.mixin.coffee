class Logs
  @log: (message) -> console.log message
  @error: (message, error = null) -> throw new Error message, error
  # wrap console.log for future proofing
  log: (message) -> console.log message
  # wrap error reporting for future proofing
  error: (message, error = null) -> throw new Error message, error

Mixen.Logs = (modules...) ->
  Mixen(modules..., Logs)
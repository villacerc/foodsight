# Alias for missing ActiveSupport::ParameterFilter in Rails 5.2
unless defined?(ActiveSupport::ParameterFilter)
    ActiveSupport::ParameterFilter = ActionDispatch::Http::ParameterFilter
  end
  
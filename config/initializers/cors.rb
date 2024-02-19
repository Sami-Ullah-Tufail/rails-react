Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins '*' # This allows requests from any origin. You might want to restrict this to your frontend's domain in a production environment.
  
      resource '*',
        headers: :any,
        methods: [:get, :post, :put, :patch, :delete, :options, :head],
        credentials: false
    end
  end
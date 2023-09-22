Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'http://localhost:3001'
      resource '/api/*', headers: :any, methods: [:get, :post, :patch, :put], credentials: true
    end
  end
  
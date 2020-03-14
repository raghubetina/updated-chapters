Rails.application.config.generators do |g|
  g.assets false
  g.fallbacks[:all] = :erb
  g.helper false
  g.javascripts false
  g.scaffold_stylesheet false
  g.stylesheets false
  g.template_engine :all
end

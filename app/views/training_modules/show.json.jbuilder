json.training_module do
  json.(@training_module, :slug, :id, :slug, :intro)
  json.slides @training_module.slides do |slide|
    json.(slide, :title, :summary, :slug, :id, :content, :assessment)
    json.index @training_module.slides.collect(&:slug).index(slide.slug) + 1
  end
end

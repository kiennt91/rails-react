class LocalesController < ApplicationController
  before_action :render_locale
  
  def en; end
  def de; end

  private

  def render_locale
    lang = params[:action]
    render json: YAML.load_file(File.open("config/locales/#{lang}.yml"))[lang].to_json
  end
end

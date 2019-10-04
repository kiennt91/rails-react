class LocalesController < ApplicationController
  def en
    render json: YAML.load_file(File.open('config/locales/en.yml'))['en'].to_json
  end

  def de
    render json: YAML.load_file(File.open('config/locales/de.yml'))['de'].to_json
  end
end

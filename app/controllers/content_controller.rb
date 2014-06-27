class ContentController < ApplicationController
  def index
    @markdown_content = File.read(File.join(Rails.root.to_s, 'config', 'demo.md'))
  end
end

# frozen_string_literal: true

class AppController < ApplicationController
  layout "default"

  def index
    @hello_world_props = { name: "Stranger" }
  end
end

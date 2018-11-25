# frozen_string_literal: true

class AppController < ApplicationController
  def app
    @hello_world_props = { name: "Stranger" }
  end
end

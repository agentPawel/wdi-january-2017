class MonstersController < ApplicationController
  def index
    @monsters = Monster.all

    respond_to do |format|
      format.html
      format.text
      format.json do
        formatted_data = @monsters.map do |monster|
          {
            full_name: monster.name,
            location: monster.home,
            creepiness: monster.creepiness
          }
        end

        render json: formatted_data
      end
    end

  end
end

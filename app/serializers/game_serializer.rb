class GameSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :developer, :cover_art_url
end

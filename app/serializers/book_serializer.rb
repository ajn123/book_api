class BookSerializer < ActiveModel::Serializer

  attributes :id, :available, :title, :timestamp
end

class QuoteSerializer < ActiveModel::Serializer
  attributes :id, :statement, :is_valid
end

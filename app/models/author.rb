class Author
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::MultiParameterAttributes

  field :name, type: String
  field :_id, type: String, default: ->{ name }  #To create custom id field
  has_many :articles
end

class Comment
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::MultiParameterAttributes

  field :name, type: String
  field :content, type: String
  embedded_in :article, :inverse_of => :comments
end

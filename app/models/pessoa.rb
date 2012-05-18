class Pessoa < ActiveRecord::Base
  has_many :vontades, :dependent => :destroy
	has_many :livros, :through => :vontades
end

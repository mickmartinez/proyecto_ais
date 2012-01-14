class Persona < ActiveRecord::Base
  has_many :pacientes
  has_many :usuarios

end

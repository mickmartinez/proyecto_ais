class Usuario < ActiveRecord::Base
 #belongs_to :persona
 #has_many :medicos
 #has_many :administradors
 #has_many :secretarias
 #has_many :taquilleros
 #belongs_to :servicio
 acts_as_authentic
end

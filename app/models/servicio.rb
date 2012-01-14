class Servicio < ActiveRecord::Base
 has_many :especialidads
 has_many :usuarios
end

class Assistance < ActiveRecord::Base
  belongs_to :user
  def self.estaDuplicado?(asistencia)
    b = true
    if Assistance.where(:user_id => asistencia.user_id, :entrada => Date.today).count == 0
     	b = false
    end
    return b
  end
end

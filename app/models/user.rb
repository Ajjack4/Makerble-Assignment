class User < ApplicationRecord
    has_secure_password
  
    validates :email, presence: true, uniqueness: true
  
    def receptionist?
      role == 'receptionist'
    end
  
    def doctor?
      role == 'doctor'
    end
  end
  

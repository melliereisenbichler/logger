class User < ApplicationRecord
    #mind. 8 Zeichen
    #mind. 1 Sonderzeichen
    #mind. 1 Zahl
    
    validates :password, length: { minimum: 8 }
    validates :password 
end

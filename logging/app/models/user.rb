class User < ApplicationRecord
    #mind. 8 Zeichen
    #mind. 1 Sonderzeichen
    #mind. 1 Zahl
    
    validates :password, length: { minimum: 8 } # min. length
    validates :password, format: {:with => /\A(?=.*\d)/x, :message => "Invalid! Password must contain a number."} # must contain number/digit
    validates :password, format: {:with => /\A(?=.*[[:^alnum:]])/x,:message => "Invalid! Password must contain a symbol."} # must contain symbol
end

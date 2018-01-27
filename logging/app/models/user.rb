class User < ApplicationRecord
    #mind. 8 Zeichen
    #mind. 1 Sonderzeichen
    #mind. 1 Zahl
    
    validates :password, length: { minimum: 8 } # min. length
    validates :password, format: {:with => /\A(?=.*\d)/x} # must contain number/digit
    validates :password, format: {:with => /\A(?=.*[[:^alnum:]])/x} # must contain symbol
end

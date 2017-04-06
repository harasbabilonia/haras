require "i18n"
class Animal < ApplicationRecord
    has_many :vendas, :dependent => :restrict_with_error

    def pedigree()
        "http://www.allbreedpedigree.com/" + I18n.transliterate(self.nome)
    end
end

require "i18n"
class Animal < ApplicationRecord
    has_many :vendas

    def pedigree()
        "http://www.allbreedpedigree.com/" + I18n.transliterate(self.nome)
    end
end

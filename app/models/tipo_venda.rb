class TipoVenda < ApplicationRecord
    has_many :vendas, :dependent => :restrict_with_error
end

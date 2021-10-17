module Accounting
  module AccountEnhancement
    def self.prepended(base)
      base.belongs_to :workspace
      base.belongs_to :user
    end
  end
end

::Keepr::Account.prepend(Accounting::AccountEnhancement) unless ::Keepr::Group.include?(::Accounting::AccountEnhancement)

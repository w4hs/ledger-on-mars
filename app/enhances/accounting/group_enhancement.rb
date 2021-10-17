module Accounting
  module GroupEnhancement
    def self.prepended(base)
      base.belongs_to :workspace
      base.belongs_to :user
    end
  end
end

::Keepr::Group.prepend(Accounting::GroupEnhancement) unless ::Keepr::Group.include?(::Accounting::GroupEnhancement)

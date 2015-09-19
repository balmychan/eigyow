class PersonInCharge < ActiveRecord::Base
    belongs_to :article, :company_person
end

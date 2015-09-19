class PersonInCharge < ActiveRecord::Base
    belongs_to :article
    belongs_to :company_person
end

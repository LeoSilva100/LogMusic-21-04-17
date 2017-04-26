class Register < ActiveRecord::Base
	belongs_to :login
	has_one :contact, :dependent => :destroy
	has_one :about, :dependent => :destroy
	has_one :inbox, :dependent => :destroy
	accepts_nested_attributes_for :contact
	accepts_nested_attributes_for :about
end

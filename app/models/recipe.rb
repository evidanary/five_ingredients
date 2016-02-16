class Recipe < ActiveRecord::Base
  belongs_to :user
  has_many :ingredients
  has_many :steps

  accepts_nested_attributes_for :ingredients, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :steps,
                                reject_if: proc {|attributes| attributes['content'].blank? }
end

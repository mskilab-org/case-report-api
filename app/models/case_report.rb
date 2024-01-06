class CaseReport < ApplicationRecord
  scope :by_texts, lambda { |rel|
                     (rel.to_s.blank? ? where('1 = 1') : where('pair LIKE :keyword OR tumor_type_final LIKE :keyword OR disease LIKE :keyword OR primary_site LIKE :keyword COLLATE NOCASE', keyword: "%#{rel}%"))
                   }
  scope :by_pair, ->(rel) { (rel.to_s.blank? ? where('1 = 1') : where(pair: rel)) }
  scope :by_disease, ->(rel) { (rel.to_s.blank? ? where('1 = 1') : where(disease: rel)) }
  scope :by_tumor_type_final, ->(rel) { (rel.to_s.blank? ? where('1 = 1') : where(tumor_type_final: rel)) }
  scope :by_primary_site, ->(rel) { (rel.to_s.blank? ? where('1 = 1') : where(primary_site: rel)) }
  scope :by_inferred_sex, ->(rel) { (rel.to_s.blank? ? where('1 = 1') : where(inferred_sex: rel)) }
end

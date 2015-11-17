json.array!(@patients) do |patient|
  json.extract! patient, :id, :name_first, :name_last, :hiv_positive, :biopsy_pending, :other_pending, :cancer, :date_seen, :date_return
  json.url patient_url(patient, format: :json)
end

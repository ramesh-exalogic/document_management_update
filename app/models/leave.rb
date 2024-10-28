class Leave < ApplicationRecord
	belongs_to :leave_type

	def string_to_date(p_date)
    str_array = p_date.split("/")
    convert_to_date(str_array[2].to_i, str_array[0].to_i, str_array[1].to_i)
  end
end

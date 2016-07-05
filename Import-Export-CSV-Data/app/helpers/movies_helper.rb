# == Schema Information
#
# Table name: movies
#
#  id           :integer          not null, primary key
#  title        :string           default("")
#  description  :string           default("")
#  rating       :integer          default(0)
#  release_date :date
#  genre        :string           default("")
#  runtime      :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

module MoviesHelper
end

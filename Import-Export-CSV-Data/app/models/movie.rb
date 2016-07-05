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

class Movie < ActiveRecord::Base

  # Generate a CSV File of All Movie Records
  def self.to_csv(fields = column_names, options={})
    CSV.generate(options) do |csv|      
      csv << fields
      all.each do |movie|
        csv << movie.attributes.values_at(*fields)
      end
    end
  end

  # Import CSV, Find or Create Movie by its title.
  # Update the record.
  def self.import(file)
    puts 'HI'
    CSV.foreach(file.path, headers: true) do |row|
      movies_hash = row.to_hash
      movie = find_or_create_by!(title: movies_hash['title'])
      movie.update_attributes(movies_hash)
    end
  end
end

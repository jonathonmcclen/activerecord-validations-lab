class TitleValidator < ActiveModel::Validator
    def validate(record)
      unless record.title.match?(/Won't Believe/) || record.title.match?(/Secret/) || record.title.match?(/Guess/) || record.title.match?(/Top\s\d/)
        record.errors[:title] << "We're only allowed to have people who work for the company in the database!"
      end
    end
  end
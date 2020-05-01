class CorporateEmailValidator < ActiveModel::EachValidator
  REGEXP_PATTERN = /\b[A-Z0-9._%a-z\-]+@getmainstreet\.com\z/

  def validate_each(record, attribute, value)
    unless REGEXP_PATTERN === value
      record.errors.add(attribute, :corporate_email_error)
    end
  end
end

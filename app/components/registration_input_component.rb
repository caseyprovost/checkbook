# frozen_string_literal: true

class RegistrationInputComponent < ViewComponent::Base
  attr_reader :form, :field, :label

  def initialize(form:, field:, label:)
    @form = form
    @field = field
    @label = label
  end

  def valid?
    !has_errors?
  end

  def has_errors?
    form.object.errors[field].any?
  end

  def error_message
    form.object.errors[field].join(", ")
  end
end

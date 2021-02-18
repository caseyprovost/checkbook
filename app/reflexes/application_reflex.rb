# frozen_string_literal: true

class ApplicationReflex < StimulusReflex::Reflex
  delegate :render, to: ApplicationController
  delegate :current_user, to: :connection
end

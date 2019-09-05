# frozen_string_literal: true

require_relative 'save_terminus'

health = 0
prompt = TTY::Prompt.new

main_menu(prompt, health)

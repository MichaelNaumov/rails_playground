class PhrasesController < ApplicationController
  def show
  end

  def index
    @dialogue = PhraseProviderService.random_phrase.html_safe
  end
end

module Payments
  class PaymentsController < ApplicationController
    def index
      render json: Facades::Payment::IndexFacade.new.index.to_json
    end
    
    def show
      render json: Facades::Payment::ShowFacade.new(id: params[:id]).show.to_json
    end
  end
end
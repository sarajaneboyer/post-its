class NotesController < ApplicationController
  def index #reads all notes
    @notes = Note.all
  end

  def show #reads just one note
    @notes = Note.find(params[:id])
  end

  def new #creates a new note in memory but NOT in the database
    @notes = Note.new
  end
end

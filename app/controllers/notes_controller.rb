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

  def create
    @notes = Note.new(notes_params)

    if @notes.save
      redirect_to notes_path
    else
      render :new
    end
  end

  def edit
    @notes = Note.find(param[:id])
  end

  def update
    @notes = Note.find(params[:id])

    if @notes.update(notes_params)
      redirect_to notes_path
    else
      render :edit
    end
  end

  def destroy
    Note.find(params[:id]).destroy
    redirect_to notes_path
  end

  private

    def notes_params
      params.require(:notes).permit(:title, :author, :body)
    end
end

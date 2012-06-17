class ForumQuestionsController < ApplicationController
  # GET /forum_questions
  # GET /forum_questions.json
  def index
    @forum_questions = ForumQuestion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @forum_questions }
    end
  end

  # GET /forum_questions/1
  # GET /forum_questions/1.json
  def show
    @forum_question = ForumQuestion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @forum_question }
    end
  end

  # GET /forum_questions/new
  # GET /forum_questions/new.json
  def new
    @forum_question = ForumQuestion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @forum_question }
    end
  end

  # GET /forum_questions/1/edit
  def edit
    @forum_question = ForumQuestion.find(params[:id])
  end

  # POST /forum_questions
  # POST /forum_questions.json
  def create
    @forum_question = ForumQuestion.new(params[:forum_question])

    respond_to do |format|
      if @forum_question.save
        format.html { redirect_to @forum_question, notice: 'Forum question was successfully created.' }
        format.json { render json: @forum_question, status: :created, location: @forum_question }
      else
        format.html { render action: "new" }
        format.json { render json: @forum_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /forum_questions/1
  # PUT /forum_questions/1.json
  def update
    @forum_question = ForumQuestion.find(params[:id])

    respond_to do |format|
      if @forum_question.update_attributes(params[:forum_question])
        format.html { redirect_to @forum_question, notice: 'Forum question was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @forum_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /forum_questions/1
  # DELETE /forum_questions/1.json
  def destroy
    @forum_question = ForumQuestion.find(params[:id])
    @forum_question.destroy

    respond_to do |format|
      format.html { redirect_to forum_questions_url }
      format.json { head :no_content }
    end
  end
end

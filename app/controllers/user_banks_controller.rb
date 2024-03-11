class UserBanksController < ApplicationController
  before_action :set_user_bank, only: %i[ show edit update destroy ]

  # GET /user_banks or /user_banks.json
  def index
    @user_banks = UserBank.all
    render layout:"_index"
  end

  # GET /user_banks/1 or /user_banks/1.json
  def show
    render layout:"_index"
  end

  # GET /user_banks/new
  def new
    @user_bank = UserBank.new
  end

  # GET /user_banks/1/edit
  def edit
  end

  # POST /user_banks or /user_banks.json
  def create
    @user_bank = UserBank.new(user_bank_params)

    respond_to do |format|
      if @user_bank.save
        format.html { redirect_to user_bank_url(@user_bank), notice: "User bank was successfully created." }
        format.json { render :show, status: :created, location: @user_bank }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_bank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_banks/1 or /user_banks/1.json
  def update
    respond_to do |format|
      if @user_bank.update(user_bank_params)
        format.html { redirect_to user_bank_url(@user_bank), notice: "User bank was successfully updated." }
        format.json { render :show, status: :ok, location: @user_bank }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_bank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_banks/1 or /user_banks/1.json
  def destroy
    @user_bank.destroy

    respond_to do |format|
      format.html { redirect_to user_banks_url, notice: "User bank was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_user_bank
      @user_bank = UserBank.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_bank_params
      params.require(:user_bank).permit(:number_document, :document_issue_date, :document_expiration_date, :name,:email, :phone, :second_phone,:type_document_id,:type_user_id)
    end
end

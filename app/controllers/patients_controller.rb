class PatientsController < ApplicationController
    def index
      @patients = Patient.all
    end
    def destroy
        @patient = Patient.find(params[:id])
        @patient.destroy
        redirect_to patients_path, notice: 'Patient was successfully deleted.'
      end
    def new
      @patient = Patient.new
    end
    def edit
        @patient = Patient.find(params[:id])
      end
    def create
      @patient = Patient.new(patient_params)
      if @patient.save
        redirect_to patients_path, notice: 'Patient was successfully created.'
      else
        render :new
      end
    end
  
    def edit
      @patient = Patient.find(params[:id])
    end
  
    # def update
    #   @patient = Patient.find(params[:id])
    #   if @patient.update(patient_params)
    #     redirect_to patients_path, notice: 'Patient was successfully updated.'
    #   else
    #     render :edit
    #   end
    # end
    def update
        @patient = Patient.find(params[:id])
        if @patient.update(patient_params)
          redirect_to patients_path, notice: 'Patient was successfully updated.'
        else
          render :edit
        end
      end
    
      private
    
      def patient_params
        params.require(:patient).permit(:name, :age) # Add other permitted parameters as needed
      end
  
    private
  
    # def patient_params
    #   params.require(:patient).permit(:name, :email, :phone)
    # end
  end
  
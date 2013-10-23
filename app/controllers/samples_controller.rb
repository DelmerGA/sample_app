class SamplesController < ApplicationController
	def index 
		@samples = Sample.all 
		# render :inline => "Hello World"
	end

	def new
	end

	def create
		sample = params[:sample]
		# raise sample
		new_sample = Sample.create(sample)
		redirect_to sample_path(new_sample) # "/samples/#{new_sample.id}"
	end

	def show
		raise params
		@sample = Sample.find(params[:kaka])
	end
end

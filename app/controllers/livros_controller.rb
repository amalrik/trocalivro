class LivrosController < ApplicationController

  def index
		@livros = Livro.all
  end

	def show
		@livro = Livro.find(params[:id])
	end

	def new
		@livro = Livro.new
		@vontade = Vontade.new
	end

	def create
		@livro = Livro.new(params[:livro])
		@livro.save
		flash[:message] = "livro '#{@livro.nome}' criado!"
		redirect_to (@livro)
	end

	def destroy
		@livro = Livro.find(params[:id])
		@livro.destroy
		flash[:message] = "livro '#{@livro.nome}' removido!"
		redirect_to livros_path
	end

	def edit
		@livro = Livro.find(params[:id])
	end

	def update
		@livro = Livro.find(params[:id])
		if @livro.update_attributes(params[:livro])
			flash[:message] = "dados do livro '#{@livro.nome}' atualizados!"
			redirect_to (@livro)
		else
			render "edit"
		end
	end
end

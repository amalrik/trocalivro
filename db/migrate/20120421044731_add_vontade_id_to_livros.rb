class AddVontadeIdToLivros < ActiveRecord::Migration
  def change
		add_column	:livros, :vontade_id, :integer
  end
end

ActiveAdmin.register Book do
  permit_params :title, :description, :cost, :author_id, :genre_id

  index do
    selectable_column
    id_column
    column :title
    column :description
    column :cost
    column :author
    column :genre
    column :created_at
    actions
  end

  filter :title
  filter :description
  filter :cost
  filter :author
  filter :genre
  filter :created_at

  form do |f|
    f.inputs do
      f.input :title
      f.input :description
      f.input :cost
      f.input :author, collection: Author.all.map { |author| [author.name, author.id] }
      f.input :genre, collection: Genre.all.map { |genre| [genre.title, genre.id] }
    end
    f.actions
  end
end

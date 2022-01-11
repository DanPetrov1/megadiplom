ActiveAdmin.register Employee do
  permit_params :name, :birthday, :phone, :post_id

  index do
    selectable_column
    id_column
    column :name
    column :birthday
    column :phone
    column :post
    column :created_at
    actions
  end

  filter :name
  filter :birthday
  filter :phone
  filter :post
  filter :created_at

  form do |f|
    f.inputs do
      f.input :name
      f.input :birthday
      f.input :phone
      f.input :post, collection: Post.all.map { |post| [post.name, post.id] }
    end
    f.actions
  end
end

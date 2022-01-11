ActiveAdmin.register Author do
  permit_params :name, :birthday, :birthplace

  index do
    selectable_column
    id_column
    column :name
    column :birthday
    column :birthplace
    column :created_at
    actions
  end

  filter :name
  filter :birthday
  filter :birthplace
  filter :created_at

  form do |f|
    f.inputs do
      f.input :name
      f.input :birthday
      f.input :birthplace
    end
    f.actions
  end

end

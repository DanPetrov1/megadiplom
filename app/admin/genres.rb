ActiveAdmin.register Genre do
  permit_params :title, :description

  index do
    selectable_column
    id_column
    column :title
    column :description
    column :created_at
    actions
  end

  filter :title
  filter :description
  filter :created_at

  form do |f|
    f.inputs do
      f.input :title
      f.input :description
    end
    f.actions
  end

end

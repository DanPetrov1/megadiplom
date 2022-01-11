ActiveAdmin.register User do
  permit_params :first_name, :last_name, :birthday, :phone, :email

  index do
    selectable_column
    id_column
    column :first_name
    column :last_name
    column :birthday
    column :phone
    column :email
    column :created_at
    actions
  end

  filter :first_name
  filter :last_name
  filter :birthday
  filter :phone
  filter :email
  filter :created_at

  form do |f|
    f.inputs do
      f.input :first_name
      f.input :last_name
      f.input :birthday
      f.input :phone
      f.input :email
    end
    f.actions
  end
end

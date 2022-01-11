ActiveAdmin.register PickupPoint do
  permit_params :name, :address, :busy_hours, :phone

  index do
    selectable_column
    id_column
    column :name
    column :address
    column :busy_hours
    column :phone
    column :created_at
    actions
  end

  filter :name
  filter :address
  filter :busy_hours
  filter :phone
  filter :created_at

  form do |f|
    f.inputs do
      f.input :name
      f.input :address
      f.input :busy_hours
      f.input :phone
    end
    f.actions
  end

end

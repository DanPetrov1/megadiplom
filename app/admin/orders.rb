ActiveAdmin.register Order do
  permit_params :order_date, :shipping_date, :cost, :payment_method_id, :pickup_point_id, :user_id, book_ids: []

  index do
    selectable_column
    id_column
    column :order_date
    column :shipping_date
    column :cost
    column :books
    column :payment_method
    column :pickup_point
    column :user
    column :created_at
    actions
  end

  filter :order_date
  filter :shipping_date
  filter :cost
  filter :books
  filter :payment_method
  filter :pickup_point
  filter :user
  filter :created_at

  form do |f|
    f.inputs do
      # f.input :books, :as => :select, :input_html => {:multiple => true}
      f.input :books, as: :check_boxes, collection: Book.all.map { |book| [book.title, book.id] }
      f.input :payment_method, collection: PaymentMethod.all.map { |payment_method| [payment_method.title, payment_method.id] }
      f.input :pickup_point, collection: PickupPoint.all.map { |pickup_point| [pickup_point.name, pickup_point.id] }
      f.input :user, collection: User.all.map { |user| [user.last_name, user.id] }
    end
    f.actions
  end
end

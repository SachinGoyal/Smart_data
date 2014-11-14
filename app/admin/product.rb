ActiveAdmin.register Product do
 permit_params :name , :description ,:status

  index do
    selectable_column
    id_column
    column :name
    column :description
    column :status
    actions
  end

  filter :name
  filter :status

  form do |f|
    f.inputs "Product Details" do
      f.input :name
      f.input :description
      f.label :status , :id => "status_label"
      f.select :status , options_for_select(['Active','Inactive'] ,:id => "status")
    end
    f.actions
  end

end





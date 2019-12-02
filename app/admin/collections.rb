ActiveAdmin.register Collection do
  permit_params :guid

  menu label: "Gruppe"

  index :title => "Gruppe" do
    column :guid
    column :created_at
    column :updated_at
    actions
  end
end

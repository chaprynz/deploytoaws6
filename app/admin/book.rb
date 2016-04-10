ActiveAdmin.register Book do
	permit_params :name, :content, :tag

    index do
            selectable_column
            column :id
            column :name
            column :tag
            column :book
            actions
        end
    show do |t|
		attributes_table do
			row :name
		end
	end

	form :html => { :enctype => "multipart/form-data" } do |f|
		f.inputs do
			f.input :name
			f.input :content
			f.input :tag
		end
		f.actions
	end
end

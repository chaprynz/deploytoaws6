ActiveAdmin.register Bookpost do

    permit_params :title, :note, :tag, :book_id, :header
    index do
            selectable_column
            column :id
            column :title
            column :tag
            column :book
            column :header
            actions
        end
        
        form do |f|
    		f.inputs do
    			input :book, label: "book"
    			input :title, label: "Title"
    			input :note, label: "Note"
    			input :header, label: "header"
    			input :tag, label: "tag"
    		    
    		end
    
    		actions
    	end
end

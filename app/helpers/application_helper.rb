module ApplicationHelper
   def has_records?(collection)
      render partial: 'shared/has-records' if (collection.empty?)
   end
   def has_errors?(model)
     render partial: 'shared/has-errors', locals: {model: model}
   end
end

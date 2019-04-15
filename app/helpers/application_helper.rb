module ApplicationHelper
	def datepicker_input form, field
	    content_tag :td, :data => {:provide => 'datepicker', 'date-format' => 'DD-MM-YYYY HH:MM', 'date-autoclose' => 'true'} do
	      form.date_field field, class: 'form-control datetimepicker-input ', placeholder: 'DD-MM-YYYY HH:MM'
	    end
  	end
end

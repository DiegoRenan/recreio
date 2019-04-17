module ApplicationHelper
	def datepicker_input form, field
	    content_tag :td, :data => {:provide => 'datepicker', 'date-format' => 'DD-MM-YYYY HH:MM', 'date-autoclose' => 'true'} do
	      form.date_field field, class: 'form-control datetimepicker-input ', placeholder: 'DD-MM-YYYY HH:MM'
	    end
  	end

  	def calendar(date = Date.today, &block)
    	Calendar.new(self, date, block).table
  	end
end

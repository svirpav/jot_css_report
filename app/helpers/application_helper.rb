module ApplicationHelper

	def full_title(page_title)
		base_title = "Jot Service Report"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end

	def full_name(page_name)
		base_name = "Jot Automation Customer Service"
		if page_name.empty?
			base_name
		else"#{base_name} | #{page_name}"
		end
	end

	def go_name(page_go)
		base_go = "Go To"
		if page_go.empty?
			base_go
		else
			"#{base_go} | #{page_go}"
		end
	end
end

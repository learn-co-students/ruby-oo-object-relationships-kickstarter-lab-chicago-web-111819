class Project
	has_many :backers, through: :project_backers

	attr_reader :title

	def initialize(title)
		@title = title
	end

	def add_backer(backer)
		@backer = backer
		self.ProjectBacker.new
	end

	
	
end



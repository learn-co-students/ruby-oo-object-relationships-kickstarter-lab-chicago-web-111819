class Backer
	has_many :projects, through: :project_backers

	attr_reader :name

	def initialize(name)
		@name = name
	end
	
	def back_project(project)
		@project = project
		self.ProjectBacker.new
	end
	
end

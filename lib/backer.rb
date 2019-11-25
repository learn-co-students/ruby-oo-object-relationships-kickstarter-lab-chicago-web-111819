require 'pry'

class Backer
    attr_accessor :name

    def initialize(name)
        @name = name 
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        list_1 = ProjectBacker.all.select do |value|
            # binding.pry
            value.backer == self 
            
        end
        list_2 = list_1.map do |value_1|
            # binding.pry
            value_1.project
        end
    end
end
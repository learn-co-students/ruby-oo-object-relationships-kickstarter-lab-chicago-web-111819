require 'pry'

class Backer 

    attr_reader :name

    def initialize(name)
        @name = name 
    end 


    def back_project(project)
        ProjectBacker.new(project,self)
    end

    def backed_projects
     
        projectArray = ProjectBacker.all.select { |i| i.backer == self}
        projectArray.map { |i| i.project}
    end








end

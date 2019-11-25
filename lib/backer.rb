require 'pry'

class Backer
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project_name)
        x = ProjectBacker.new(project_name, self)
        x
        # binding.pry
    end

    def backed_projects
        ary1 = ProjectBacker.all.select { |obj| obj.backer == self }
        ary2 = ary1.map { |x| x.project }
    end
end
class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self,backer)
    end

    def backers
        #copied this over from backer.rb
        backerArray = ProjectBacker.all.select { |i| i.project == self}
        backerArray.map { |i| i.backer}
    end



end
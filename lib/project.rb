class Project
    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        x = ProjectBacker.new(self, backer)
        x
    end

    def backers
        ary1 = ProjectBacker.all.select { |obj| obj.project == self }
        ary2 = ary1.map { |x| x.backer }
    end
end
class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        bkrs = []
        ProjectBacker.all.each do |pb|
            if pb.project == self
                bkrs << pb.backer
            end
        end
        return bkrs
    end

end
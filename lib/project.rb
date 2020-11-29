class Project

    attr_accessor :title 

    def initialize(title)
      @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        ProjectBacker.all.collect do |project|
          project.backer if project.project == self
        end.compact
    end
end
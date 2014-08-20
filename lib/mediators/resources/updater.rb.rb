module Mediators::Resources
  class Updater < Mediators::Base
    def initialize(resource: resource, plan: plan)
      @resource = resource
      @plan_name = plan
    end

    def call
      @resource.update(plan: @plan_name)
      @resource.save
    end
  end
end

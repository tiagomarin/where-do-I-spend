require "rails_helper"

RSpec.describe GroupExpensesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/group_expenses").to route_to("group_expenses#index")
    end

    it "routes to #new" do
      expect(get: "/group_expenses/new").to route_to("group_expenses#new")
    end

    it "routes to #show" do
      expect(get: "/group_expenses/1").to route_to("group_expenses#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/group_expenses/1/edit").to route_to("group_expenses#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/group_expenses").to route_to("group_expenses#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/group_expenses/1").to route_to("group_expenses#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/group_expenses/1").to route_to("group_expenses#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/group_expenses/1").to route_to("group_expenses#destroy", id: "1")
    end
  end
end

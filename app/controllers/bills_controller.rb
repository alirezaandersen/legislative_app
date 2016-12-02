class BillsController < ApplicationController

  def index

  end

  def new
    # binding.pry
    @bill = Bill.new
    @action = Action.new
    @sponsor = Sponsor.new
    @party_afflication = PartyAfflication.new
    @category = Category.new
  end

  def create
    bill = strong_params(params)
    new_bill = Bill.create(title: bill[:title], description: bill[:description], state: bill[:state])
    action = Action.create(name: bill[:action][:name])
    party = PartyAfflication.create(title: bill[:sponsor][:party_afflication][:title])
    sponsor = Sponsor.create(first_name: bill[:sponsor][:first_name], last_name: bill[:sponsor][:last_name], party_afflication_id: party.id)
    category = Category.create(name: bill[:category][:name], classification: bill[:category][:classification])

    new_bill.bill_actions.create(action_id: action.id)
    new_bill.bill_categories.create(category_id: category.id)
    new_bill.bill_sponsors.create(sponsor_id: sponsor.id)
  end

  def show
    @bill = Bill.find(params[:id])
    @sponsors = @bill.sponsors
    @actions = @bill.actions
    @categories = @bill.categories
  end


private


def strong_params(params)
  params.require(:bill).permit(:title, :description, :state, action: [:name], category: [:name, :classification], sponsor: [:first_name, :last_name, party_afflication: [:title]])
end

def parse_bill(params)

  binding.pry
end
end

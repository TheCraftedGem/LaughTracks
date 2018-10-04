RSpec.describe "Comedians Page" do
  context "Visitor"
  describe "visits `/comedians`" do
    it "should display list of comedians" do
     dave = Comedian.create(name: "Dave Chappelle", age: 54, city: "woof")
     half_baked_special = Special.create(name: "Half Baked", comedian_id: dave.id, runtime: 45)

      visit "/comedians"

      expect(page).to have_content("All Comedians")
      expect(page).to have_content("Dave Chappelle")
      expect(page).to have_content(dave.name)
      expect(page).to have_content(dave.age)
      expect(page).to have_content(dave.city)
      expect(page).to have_content("54")
    end
  end
end
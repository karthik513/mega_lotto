require 'spec_helper'

module MegaLotto
	describe Drawing do
		describe '#draw' do
			let(:draw) { MegaLotto::Drawing.new.draw }

			it "returns an array" do
				expect(draw).to be_a(Array)
			end

			it "return a draw with 5 elements " do
				expect(draw.size).to eq(5)
			end

			it "each element is an Integer" do
				draw.each do |drawing|
					expect(drawing).to be_a(Integer)
				end
			end

			it "each element is less than 60" do
				draw.each do |drawing|
					expect(drawing).to be < 60
				end
			end
		end	
	end
end
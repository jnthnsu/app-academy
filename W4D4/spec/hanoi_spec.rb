require 'rspec'
require 'hanoi'



describe '#initialize' do

    let(:hanoi) {Game.new}
    it 'has three towers' do
        expect(hanoi.towers.length).to eq(3)
    end
end

describe '#won?' do
    let(:hanoi) {Game.new}
    let(:oneFull) {Game.new([[], [3,2,1], []])}
    let(:twoFull) {Game.new([[], [], [3,2,1]])}
    
    it 'should return true if either tower 1 or tower 2 is full' do
        expect(oneFull.won? || twoFull.won?).to be_truthy
        # expect(twoFull.win?).to be_truthy
    end
    
    # let(:oneNotFull) {Game.new([[], [], []])}
    # let(:twoNotFull) {Game.new([[], [], []])}
    
    it 'should return false if neither tower 1 and tower 2 are full' do
        expect(!oneFull.won? && !twoFull.won?).to be_falsey
        expect(hanoi.won?).to be_falsey
    end
end

describe '#move' do #takes (start, end)
    let(:hanoi) {Game.new}
    it 'should move the last disk of the start tower to the end top of tower' do
        hanoi.move(0,1)
        expect(hanoi.towers).to eq([[3,2], [1], []])
    end

end

describe '#valid_move?' do
    let(:hanoi) {Game.new}
    it 'should have larger disk at the top of the end_pos tower' do
        expect(hanoi.valid_move?(0, 1)) to eq
    end
    hanoi.towers[end_pos].last > hanoi.towers[start_pos].last
end

describe '#play' do
end

describe '#display' do
end



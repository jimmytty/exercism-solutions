local house = {}

local verses = {}
local presentation = 'This is the'
local adverb       = '\nthat'

local phrases = {
    { 'house', 'Jack built' },
    { 'malt', 'lay in' },
    { 'rat', 'ate' },
    { 'cat', 'killed' },
    { 'dog', 'worried' },
    { 'cow with the crumpled horn', 'tossed' },
    { 'maiden all forlorn', 'milked' },
    { 'man all tattered and torn', 'kissed' },
    { 'priest all shaven and shorn', 'married' },
    { 'rooster that crowed in the morn', 'woke' },
    { 'farmer sowing his corn', 'kept' },
    { 'horse and the hound and the horn', 'belonged to' },
};

for i = 1, #phrases do
    local verse = {}
    local subject_action = table.concat(
        { presentation, phrases[i][1] .. adverb, phrases[i][2] }, ' '
    )
    table.insert(verse, subject_action)
    if i > 1 then
        for j = i - 1, 1, -1 do
            subject_action = table.concat(
                { ' the', phrases[j][1] .. adverb, phrases[j][2] }, ' '
            )
            table.insert(verse, subject_action)
        end
    end
    verse[#verse] = string.gsub(verse[#verse], "\n", ' ') .. '.'
    
    table.insert(verses, table.concat(verse, ''))
end


house.verse = function(which)
    return verses[which]
end

house.recite = function()
    return table.concat(verses, "\n")
end

return house

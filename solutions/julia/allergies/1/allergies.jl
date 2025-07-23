function allergic_to(score, allergen)
    return allergen in allergy_list(score)
end

function allergy_list(score)
    items = (
        (128, "cats"        ),
        ( 64, "pollen"      ),
        ( 32, "chocolate"   ),
        ( 16, "tomatoes"    ),
        (  8, "strawberries"),
        (  4, "shellfish"   ),
        (  2, "peanuts"     ),
        (  1, "eggs"        ),
    )

    max = sum(e[1] for e in items)
    if score > max score = score % (max + 1) end

    list = Set([""])
    delete!(list, "")
    for e in items
        (value, name) = e
        if score >= value
            list = union(Set([name]), list)
            score = score - value
        end
    end

    return list
end

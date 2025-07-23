local rules = {}

function rules.eat_ghost(power_pellet_active, touching_ghost)
    if power_pellet_active and touching_ghost then
        return true
    end
    return false
end

function rules.score(touching_power_pellet, touching_dot)
    if touching_power_pellet or touching_dot then
        return true
    end
    return false
end

function rules.lose(power_pellet_active, touching_ghost)
    if not power_pellet_active and touching_ghost then
        return true
    end
    return false
end

function rules.win(has_eaten_all_dots, power_pellet_active, touching_ghost)
    local has_lose = rules.lose(power_pellet_active, touching_ghost)
    if has_eaten_all_dots and not has_lose then
        return true
    end
    return false
end

return rules

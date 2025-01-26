xi.customutil = xi.customutil or {}

xi.customutil.hasEnmity = function(player)
    -- First, check if the player has enmity
    if player:hasEnmity() then
        return true
    end

    -- Get the player's alliance (includes the player, party, and alliance members)
    local allianceMembers = player:getAlliance()

    if not allianceMembers then
        return false -- No alliance members, so no enmity.
    end

    -- Iterate through each member of the alliance
    for _, member in ipairs(allianceMembers) do
        -- Check if this member is a player and has enmity
        if member:hasEnmity() then
            return true -- Found a member with enmity
        end
    end

    return false -- No enmity found for the player or any alliance member
end
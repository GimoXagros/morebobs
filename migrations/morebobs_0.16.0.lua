-- Reload recipes and technologies
for i, player in ipairs(game.players) do
  player.force.reset_recipes()
  player.force.reset_technologies()
end

for index, force in pairs(game.forces) do
  -- Generate technology and recipe tables
  local tech = force.technologies
  local recipes = force.recipes

  -- Unlock researched recipes
  if tech["steel-processing"] and tech["steel-processing"].researched then
    if recipes["pipe-steel-straight"] then
      recipes["pipe-steel-straight"].enabled = true
    end
    if recipes["pipe-steel-junction"] then
      recipes["pipe-steel-junction"].enabled = true
    end
    if recipes["pipe-steel-elbow"] then
      recipes["pipe-steel-elbow"].enabled = true
    end
  end
  
  if tech["ceramics"] and tech["ceramics"].researched then
    if recipes["pipe-ceramic-straight"] then
      recipes["pipe-ceramic-straight"].enabled = true
    end
    if recipes["pipe-ceramic-junction"] then
      recipes["pipe-ceramic-junction"].enabled = true
    end
    if recipes["pipe-ceramic-elbow"] then
      recipes["pipe-ceramic-elbow"].enabled = true
    end
  end
  
  if tech["plastics"] and tech["plastics"].researched then
    if recipes["pipe-plastic-straight"] then
      recipes["pipe-plastic-straight"].enabled = true
    end
    if recipes["pipe-plastic-junction"] then
      recipes["pipe-plastic-junction"].enabled = true
    end
    if recipes["pipe-plastic-elbow"] then
      recipes["pipe-plastic-elbow"].enabled = true
    end
  end
  
  if tech["alloy-processing-1"] and tech["alloy-processing-1"].researched then
    if recipes["pipe-bronze-straight"] then
      recipes["pipe-bronze-straight"].enabled = true
    end
    if recipes["pipe-bronze-junction"] then
      recipes["pipe-bronze-junction"].enabled = true
    end
    if recipes["pipe-bronze-elbow"] then
      recipes["pipe-bronze-elbow"].enabled = true
    end
  end
  
  if tech["zinc-processing"] and tech["zinc-processing"].researched then
    if recipes["pipe-brass-straight"] then
      recipes["pipe-brass-straight"].enabled = true
    end
    if recipes["pipe-brass-junction"] then
      recipes["pipe-brass-junction"].enabled = true
    end
    if recipes["pipe-brass-elbow"] then
      recipes["pipe-brass-elbow"].enabled = true
    end
  end
  
  if tech["titanium-processing"] and tech["titanium-processing"].researched then
    if recipes["pipe-titanium-straight"] then
      recipes["pipe-titanium-straight"].enabled = true
    end
    if recipes["pipe-titanium-junction"] then
      recipes["pipe-titanium-junction"].enabled = true
    end
    if recipes["pipe-titanium-elbow"] then
      recipes["pipe-titanium-elbow"].enabled = true
    end
  end
  
  if tech["tungsten-processing"] and tech["tungsten-processing"].researched then
    if recipes["pipe-tungsten-straight"] then
      recipes["pipe-tungsten-straight"].enabled = true
    end
    if recipes["pipe-tungsten-junction"] then
      recipes["pipe-tungsten-junction"].enabled = true
    end
    if recipes["pipe-tungsten-elbow"] then
      recipes["pipe-tungsten-elbow"].enabled = true
    end
  end
end
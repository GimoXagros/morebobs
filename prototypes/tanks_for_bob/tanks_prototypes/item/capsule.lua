data:extend({
	--fish-kit
  {
    type = "capsule",
    name = "fish-kit",
    icon = "__morebobs__/graphics/icons/tank/fish-kit.png",
    flags = {"goes-to-quickbar"},
    icon_size = 32,
    capsule_action =
    {
      type = "use-on-self",
      attack_parameters =
      {
        type = "projectile",
		    ammo_category = "capsule",
        cooldown = 10,
        range = 0,
        ammo_type =
        {
          category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "instant",
              target_effects = 
              {
                type = "damage",
                damage = {type = "physical", amount = -40}
              }
            }
          }
        }
      }
    },
    subgroup = "tank-ammo-infantry",
    order = "a-01[fish-kit]",
    stack_size = 100
  },
	--Special
  {
    type = "capsule",
    name = "tank-recall-token",
    icon = "__morebobs__/graphics/icons/tank/tank-recall-token.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    capsule_action =
    {
      type = "use-on-self",
      attack_parameters =
      {
        type = "projectile",
        ammo_category = "capsule",
        cooldown = 30,
        projectile_creation_distance = 0.0,
        range = 0,
        ammo_type =
        {

          category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "instant",
              target_effects = 
              {
                {
                  type = "create-entity",
                  entity_name = "pre-teleport-effect",
                  trigger_created_entity = true
                }
              }
            }
          }
        }
      }
    },
    subgroup = "tank-ammo-infantry",
    order = "b-01[tank-recall-token]",
    stack_size = 10
  },
  {
    type = "capsule",
    name = "repair-capsule",
    icon = "__morebobs__/graphics/icons/tank/repair-capsule.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    capsule_action =
    {
      type = "throw",
      attack_parameters =
      {
        type = "projectile",
        ammo_category = "capsule",
        cooldown = 15,
        projectile_creation_distance = 0.6,
        range = 20,
        ammo_type =
        {
          category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "projectile",
              projectile = "repair-capsule",
              starting_speed = 0.3
            }
          }
        }
      }
    },
		subgroup = "capsule",
		order = "da[repair-capsule]",
		stack_size = 100
  },
})
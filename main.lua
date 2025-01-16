----------------------------------------------
------------MOD CODE -------------------------

SMODS.Sound{
key = 'music_antimatter',
path = 'antimatter.mp3',
pitch = 0.789,
 sync = {
 	['music1'] = true,
 	['music2'] = true,
	['music3'] = true,
	['music4'] = true,
	['music5'] = true,
 },
select_music_track = function()
		return next(SMODS.find_card("j_440_6/4")) and 1.57e308
	end,
}


if debug.mode then
SMODS.Booster {
    key = "macedonia",
   loc_txt = {
    name = 'Macedonia',
    group_name = 'The Booster', -- Delte if using localization file
    text = {
      'when the pack is boosting',
    }
  },
    atlas = "placeholder",
    pos = { x = 0, y = 0 },
    config = { extra = 4, choose = 1 },
    cost = 6,
    order = 1,
    weight = 0.96,
	draw_hand = true, -- Should the pack draw your hand when opened. [false for planets, true for tarots and spectral].
    create_card = function(self, card)
        return create_card("Tarot", "Planet", "Buffoon", "Standard", G.pack_cards, nil, nil, true, true, nil, "mac")
    end,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.config.center.config.choose, card.ability.extra } }
	end,
		ease_background_colour = function(self)
			ease_background_colour({ new_colour = G.C.DARK_EDITION, special_colour = G.C.GREEN, contrast = 0.75 })
			ease_colour(G.C.DYN_UI.MAIN, G.C.CLEAR)
	end,
    particles = function(self)
            G.booster_pack_sparkles = Particles(1, 1, 0,0, {
                timer = 0.25,
                scale = 0.45,
                initialize = true,
                lifespan = 5,
                speed = 1.5,
                padding = 0,
                attach = G.ROOM_ATTACH,
                colours = {G.C.RED, lighten(G.C.BLUE, 0.1)},
                fill = true
            })
            G.booster_pack_sparkles.fade_alpha = 0.65
            G.booster_pack_sparkles:fade(1, 0)
        end,
}
end

SMODS.Blind{
key = "dies",
loc_txt = {
        name = 'The Die',
        text = {'hi'},
          },
dollars = 0,
mult = 3.5,
atlas = 'die',
pos = { x = 0, y = 0 },
boss_colour = HEX('E97451'),
boss = {min = 0, max = 18}
}

SMODS.Challenge{
key = 'desert',
loc_txt = {
        name = 'The Desert',
		  },
jokers = {
         {id = 'j_440_desert', eternal = true, pinned = true}
},
 restrictions = {
            banned_cards = {
                {id = 'c_440_towel'},
                {id = 'c_familiar'},
                {id = 'c_grim'},
                {id = 'c_incantation'},
            },
			 banned_other = {
			 {id = 'p_standard'},
            }
},
}

SMODS.Enhancement{
key = "wet",
atlas = "wet_card",
loc_txt = {
         name = "Wet",
		 text = {
		 "{s:0.5}(hopefully){}{s:1} 1 chip.",
            },
		},
config = {
          bonus = 1
		 },
}

SMODS.Enhancement{
key = "dry",
atlas = "dry_card",
loc_txt = {
         name = "Dry",
		 text = {
		 "{s:0.5}(hopefully){}{s:1} 1 mult.",
            },
		},
config = {
          mult = 1
		 },
}

SMODS.Atlas{
    key = 'Jokers', --atlas key
    path = 'Jokers.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Atlas{
    key = 'die', --atlas key
    path = 'thedie2.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 34, --width of one card
    py = 34, -- height of one card
	atlas_table = 'ANIMATION_ATLAS',
	frames = 21
}

SMODS.Atlas{
    key = 'straights', --atlas key
    path = 'straights.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 91, --width of one card
    py = 91, -- height of one card
}

SMODS.Atlas{
    key = 'placeholder', --atlas key
    path = 'placeholder.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Atlas{
    key = 'tap', --atlas key
    path = 'tap.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Atlas{
    key = 'towel', --atlas key
    path = 'towel.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Atlas{
    key = 'buyson', --atlas key
    path = 'buywaterson.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Atlas{
    key = 'laug', --atlas key
    path = 'laug2.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Atlas{
    key = 'wet_card', --atlas key
    path = 'wetcard.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 72, --width of one card
    py = 96 -- height of one card
}

SMODS.Atlas{
    key = 'dry_card', --atlas key
    path = 'drycard.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 72, --width of one card
    py = 96 -- height of one card
}

SMODS.Atlas{
    key = 'wheel2', --atlas key
    path = 'wheel2.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Atlas{
    key = 'desert', --atlas key
    path = 'desert2.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 72, --width of one card
    py = 96 -- height of one card
}


SMODS.Atlas{
    key = 'teardrop', --atlas key
    path = 'teardrop.jpeg', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Atlas{
    key = '6/4', --atlas key
    path = '64jump.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

SMODS.Consumable{
    key = 'tap', --key
    set = 'Tarot', --the set of the card: corresponds to a consumable type
    atlas = 'tap', --atlas
    pos = {x = 0, y = 0}, --position in atlas
    loc_txt = {
        name = 'The Tap', --name of card
        text = { --text of card
            'Pours water on {s:0.5}(hopefully){s:1}{C:attention}1{} card,',
            'makes it {C.attention}WET{}.'
        }
    },
    config = {
        extra = {
            cards = 1 --configurable value
			
        }
    },
	
   loc_vars = function(self,info_queue, card)
         info_queue[#info_queue+1] = G.P_CENTERS.m_440_wet --displays configurable value: the #1# in the description is replaced with the configurable value
    end,
    can_use = function(self,card)
        if G and G.hand then
            if #G.hand.highlighted ~= 0 and #G.hand.highlighted <= card.ability.extra.cards then --if cards in hand highlighted are above 0 but below the configurable value then
                return true
            end
        end
        return false
    end,
    use = function(self,card,area,copier)
    for i=1, #G.hand.highlighted do
      G.hand.highlighted[i]:set_ability(G.P_CENTERS["m_440_wet"])
      G.hand.highlighted[i]:flip()
      G.E_MANAGER:add_event(Event({
        trigger = "after",
        delay = 0.5,
        func = function()
          G.hand.highlighted[i]:flip()
          return true
        end
      }))
    end
  end
 }
 
 SMODS.Consumable{
    key = 'towel', --key
    set = 'Tarot', --the set of the card: corresponds to a consumable type
    atlas = 'towel', --atlas
    pos = {x = 0, y = 0}, --position in atlas
    loc_txt = {
        name = 'The Towel', --name of card
        text = { --text of card
            'Dries {s:0.5}(hopefully){s:1}{C:attention}3{} cards,',
            'makes them {C.attention}DRY{}.'
        }
    },
    config = {
        extra = {
            cards = 3 --configurable value
			
        }
    },
	
   loc_vars = function(self,info_queue, card)
         info_queue[#info_queue+1] = G.P_CENTERS.m_440_dry --displays configurable value: the #1# in the description is replaced with the configurable value
    end,
    can_use = function(self,card)
        if G and G.hand then
            if #G.hand.highlighted ~= 0 and #G.hand.highlighted <= card.ability.extra.cards then --if cards in hand highlighted are above 0 but below the configurable value then
                return true
            end
        end
        return false
    end,
    use = function(self,card,area,copier)
    for i=1, #G.hand.highlighted do
      G.hand.highlighted[i]:set_ability(G.P_CENTERS["m_440_dry"])
      G.hand.highlighted[i]:flip()
      G.E_MANAGER:add_event(Event({
        trigger = "after",
        delay = 0.5,
        func = function()
          G.hand.highlighted[i]:flip()
          return true
        end
      }))
    end
  end
 }
 
if debug.mode then
 SMODS.Consumable{
    key = 'doppel', --key
    set = 'Spectral', --the set of the card: corresponds to a consumable type
    atlas = 'tap', --atlas
    pos = {x = 0, y = 0}, --position in atlas
    loc_txt = {
        name = 'Doppelganger', --name of card
        text = { --text of card
            'Turns {C:attention}#1#{} selected cards into 7 of clubs,',
            '{C:inactive,s0.6}(kirbv fears the seeing double requirements){}.'
        }
    },
    config = {
        extra = {
            cards = 3 --configurable value
			
        }
    },
	
   loc_vars = function(self,info_queue, center)
        return {vars = {center.ability.extra.cards}} --displays configurable value: the #1# in the description is replaced with the configurable value
    end,
    can_use = function(self,card)
        if G and G.hand then
            if #G.hand.highlighted ~= 0 and #G.hand.highlighted <= card.ability.extra.cards then --if cards in hand highlighted are above 0 but below the configurable value then
                return true
            end
        end
        return false
    end,
    use = function(self,card,area,copier)
    for i=1, #G.hand.highlighted do
	local suit_prefix = 'Clubs'
	local rank_suffix = 'Seven'
      G.hand.highlighted[i]:assert(SMODS.change_base(G.hand.highlighted, suit_prefix, rank_suffix))
      G.hand.highlighted[i]:flip()
      G.E_MANAGER:add_event(Event({
        trigger = "after",
        delay = 0.5,
        func = function()
          G.hand.highlighted[i]:flip()
          return true
        end

      }))
    end
  end
 }
end
 
 SMODS.Consumable{
    key = 'spin2', --key
    set = 'Tarot', --the set of the card: corresponds to a consumable type
    atlas = 'wheel2', --atlas
    pos = {x = 0, y = 0}, --position in atlas
    loc_txt = {
        name = 'Wheel of fortune 2: spin harder', --name of card
        text = { --text of card
            '{C:attention}#1#{} in {C:attention}#2#{} chance to',
            'make all jokers negative.',
			'{C:inactive,s:0.5}(not actually 1 in 2){}'
        }
    },
	   config = {
        extra = {
            chance = 1, --configurable value
			another_chance = 2,
			actual_chance = 1,
			another_actual_chance = 200,
			chance3 = 150
        }
    },
	 loc_vars = function(self,info_queue, center)
        return {vars = {center.ability.extra.chance, center.ability.extra.another_chance, center.ability.extra.actual_chance}} --displays configurable value: the #1# in the description is replaced with the configurable value
    end,
	can_use = function(self,card)
	return true
	end,
	  use = function(self,card,area,copier)
      if pseudorandom('card.ability.extra.actual_chance') < G.GAME.probabilities.normal/12 then
	  for i=1, #G.jokers.cards do
	   G.jokers.cards[i]:set_edition({negative = true},true)
	  end
	  end
	  end
 }
 
SMODS.Joker{
    key = 'waterson', --joker key
    loc_txt = { -- local text
        name = 'BuyWaterSon',
        text = {
          'Gains {X:mult,C:white}X#2#{} Mult,',
          'every {C:attention}wet{} card',
		  '{C:inactive}(Currently {X;mult,C:white}X#1#{C:inactive} mult){}'
        },
        --[[unlock = {
            'Be {C:legendary}cool{}',
        }]]
    },
    atlas = 'buyson', --atlas' key
    rarity = 2, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 7, --cost
    unlocked = true, --where it is unlocked or not: if true, 
    discovered = false, --whether or not it starts discovered
    blueprint_compat = true, --can it be blueprinted/brainstormed/other
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
        Xmult = 0, --configurable value
		Xmult_gain = 2,
		Wet_cards = 0
      }
    },
	update = function(self, card, dt)
        if not G.SETTINGS.paused and G.jokers then
            card.ability.extra.Wet_cards = 0
            for k, v in pairs(G.playing_cards) do
                if v.config.center == G.P_CENTERS.m_440_wet then card.ability.extra.Wet_cards = card.ability.extra.Wet_cards + 1
				 card.ability.extra.Xmult = card.ability.extra.Xmult_gain * card.ability.extra.Wet_cards end
				end
			end
		end,
    loc_vars = function(self,info_queue,center) --adds "Joker"'s description next to this card's description
        return {vars = {center.ability.extra.Xmult, center.ability.extra.Xmult_gain}} --#1# is replaced with card.ability.extra.Xmult
    end,
    calculate = function(self,card,context)
        if context.joker_main then
            return {
                Xmult_mod = card.ability.extra.Xmult,
                message = 'X' .. card.ability.extra.Xmult,
                colour = G.C.MULT
            }
    end
 end
 }

SMODS.Joker{
    key = 'laug', --joker key
    loc_txt = { -- local text
        name = 'Laug',
        text = {
          '{X:mult,C:white}X#2#{} Mult for every {C:attention}Joker{}',
		  'Currently {X:mult,C:white}X#1#{} Mult',
          '{C;inactive}(does not include this joker itself){}'
        },
    },
    atlas = 'laug', --atlas' key
    rarity = 3, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 9, --cost
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    config = { 
      extra = {
        Xmult = 0, --configurable value
		Jokers = 0,
		Xmult_gain = 1
      }
    },
	update = function(self, card, dt)
        if not G.SETTINGS.paused and G.jokers then
            card.ability.extra.Jokers = 0
		 for i = 1, #G.jokers.cards do
           if G.jokers.cards[i].ability.set == 'Joker' then
		   card.ability.extra.Jokers = card.ability.extra.Jokers + 1
		   card.ability.extra.Xmult = card.ability.extra.Xmult_gain * card.ability.extra.Jokers
        end
	end
	end
	end,
	  loc_vars = function(self,info_queue,center) --adds "Joker"'s description next to this card's description
        return {vars = {center.ability.extra.Xmult, center.ability.extra.Xmult_gain}} --#1# is replaced with card.ability.extra.Xmult
    end,
	    calculate = function(self,card,context)
        if context.joker_main then
		return {
                Xmult_mod = card.ability.extra.Xmult,
                message = 'X' .. card.ability.extra.Xmult,
                colour = G.C.MULT
            }
    end
 end
 }

SMODS.Joker{
    key = 'teardrop', --joker key
    loc_txt = { -- local text
        name = 'teardrop from bfdi',
        text = {
          '{C:attention}Scored{} face cards',
		  'become {C:attention}wet{}.'
        },
    },
    atlas = 'teardrop', --atlas' key
    rarity = 1, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 5, --cost
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
       loc_vars = function(self,info_queue,center)
        info_queue[#info_queue+1] = G.P_CENTERS.m_440_wet
       end,		
	   calculate = function(self,card,context)                   
		if G.jokers then
                if context.before then		
					local faces = {}
							for k, v in ipairs(context.scoring_hand) do
                            if v:is_face() then 
                                faces[#faces+1] = v
                                v:set_ability(G.P_CENTERS.m_440_wet, nil, true)
                                G.E_MANAGER:add_event(Event({
                                    func = function()
                                        v:juice_up(1, 0.5)
                                        return true
                        end}))
                    end
                        end
	end
end
end
}

SMODS.Joker{
    key = 'desert', --joker key
    loc_txt = { -- local text
        name = 'The Joker Desert',
        text = {
          'Increases blind requirements by {C:attention}X#2#{} every hand played,',
		  'but played {C:attention}dry{} cards give {C:mult}+#1#{} mult',
		  'when {C:attention}scored{}'
        },
    },
    atlas = 'desert', --atlas' key
    rarity = 2, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 5, --cost
	config = {
	 extra = {
	  drymult = 0,
	  blindchipmult = 1.05,
	  Dry_cards = 0,
	  drymult_gain = 30
	  }
	  },
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
       loc_vars = function(self,info_queue,center)
        info_queue[#info_queue+1] = G.P_CENTERS.m_440_dry
		return {vars = {center.ability.extra.drymult_gain, center.ability.extra.blindchipmult}}
       end,	
       

	   calculate = function(self,card,context)           
		if G.jokers then
              if context.before then
		G.E_MANAGER:add_event(Event({func = function()
	   	G.GAME.blind.chips = G.GAME.blind.chips * card.ability.extra.blindchipmult
	    G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
		G.FUNCS.blind_chip_UI_scale(G.hand_text_area.blind_chips)
        G.HUD_blind:recalculate() 
		return true end }))
		      return {
                mult_mod = card.ability.extra.drymult,
                message = ':middle_finger:'
            }
		end
		if context.joker_main then
							for k, v in ipairs(context.scoring_hand) do
                             if v.config.center == G.P_CENTERS.m_440_dry then card.ability.extra.Dry_cards = card.ability.extra.Dry_cards + 1
				             card.ability.extra.drymult = card.ability.extra.drymult_gain * card.ability.extra.Dry_cards end
                        end
                        return {
                mult_mod = card.ability.extra.drymult,
                message = 'maybe mult?',
                colour = G.C.MULT
            }
    end
end
end
}

SMODS.Joker{
    key = '6/4', --joker key
    loc_txt = { -- local text
        name = '6/4 jumpscare',
        text = {
          '{X:mult,C:white}X#1#{} mult when',
		  '{C:attention}6, 4, or 3{} played.'
        },
    },
    atlas = '6/4', --atlas' key
    rarity = 1, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 4, --cost
	config = {
	      extra = {
		    Xmult = 2
			}
		},
    pos = {x = 0, y = 0}, --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
       loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.Xmult}}
       end,		
	   calculate = function(self,card,context)                   
		if G.jokers then
		if context.joker_main then
							 for i = 1, #context.scoring_hand do
                        if context.scoring_hand[i]:get_id() == 3 or 4 or 6 then
                             return {
                        message = 'X' .. card.ability.extra.Xmult,
                        Xmult_mod = card.ability.extra.Xmult
						}
												end
                            end	
						end
end
	end,

}

SMODS.Joker{
    key = 'straight', --joker key
    loc_txt = { -- local text
        name = 'STOP PLAYING STRAIGHTS!!',
        text = {
          "RANKS WEREN'T SUPPOSED TO MATTER IN A HAND!",
		  "{C:inactive}(+#1# mult if a straight is played){}"
        },
    },
	cost = 6,
    atlas = 'straights', --atlas' key
    rarity = 2, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
	config = {
	extra = {
	mult = 15
	}
	},
	 loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.mult}}
       end,	
	    calculate = function(self,card,context)        
	  if G.jokers then
	  if context.joker_main then
		if context.poker_hands['Straight'] then
		if not context.repetition then
		  return {
                        message = '+' .. card.ability.extra.mult,
                        mult_mod = card.ability.extra.mult
						}
					end
				end
			end
		end
	end
}

SMODS.Joker{
    key = 'placeholder', --joker key
    loc_txt = { -- local text
        name = '',
        text = {
          'g'
        },
    },
    atlas = 'placeholder', --atlas' key
    rarity = 4, --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
}
----------------------------------------------
------------MOD CODE END----------------------
    

local lwcomp = ...
local mats = xcompat.materials



minetest.register_craft ({
	output = "lwcomputers:computer 1",
	recipe = {
		{ mats.stone, mats.tin_ingot, mats.glass },
		{ mats.steel_ingot, mats.clay_lump, mats.steel_ingot },
		{ mats.stick, mats.copper_ingot, mats.coal_lump }
	}
})


minetest.register_craft ({
	output = "lwcomputers:computer_robot 1",
	recipe = {
		{ "", mats.tin_ingot, "" },
		{ mats.steel_ingot, "lwcomputers:computer", mats.steel_ingot },
		{ "", mats.copper_ingot, "" }
	}
})


minetest.register_craft ({
	output = "lwcomputers:trash 1",
	recipe = {
		{ "", "group:wood", "" },
		{ "group:wood", "", "group:wood" },
		{ "", "group:wood", "" }
	}
})


local flours  = {"farming:flour", mats.flint}

for i, flour in ipairs(flours) do
	minetest.register_craft ({
		output = "lwcomputers:floppy_black 1",
		recipe = {
			{ flour, mats.paper },
			{ mats.iron_lump, mats.dye_black }
		}
	})


	minetest.register_craft ({
		output = "lwcomputers:floppy_blue 1",
		recipe = {
			{ flour, mats.paper },
			{ mats.iron_lump, mats.dye_blue }
		}
	})


	minetest.register_craft ({
		output = "lwcomputers:floppy_red 1",
		recipe = {
			{ flour, mats.paper },
			{ mats.iron_lump, mats.dye_red }
		}
	})


	minetest.register_craft ({
		output = "lwcomputers:floppy_green 1",
		recipe = {
			{ flour, mats.paper },
			{ mats.iron_lump, mats.dye_green }
		}
	})


	minetest.register_craft ({
		output = "lwcomputers:floppy_yellow 1",
		recipe = {
			{ flour, mats.paper },
			{ mats.iron_lump, mats.dye_yellow }
		}
	})


	minetest.register_craft ({
		output = "lwcomputers:floppy_white 1",
		recipe = {
			{ flour, mats.paper },
			{ mats.iron_lump, mats.dye_white }
		}
	})

end


minetest.register_craft ({
	output = "lwcomputers:floppy_lua 1",
	recipe = {
		{ "group:floppy_disk" },
		{ mats.book }
	}
})


minetest.register_craft ({
	output = "lwcomputers:floppy_los 1",
	recipe = {
		{ "group:floppy_disk", mats.book },
		{ mats.book, "" }
	}
})


minetest.register_craft ({
   	output = "lwcomputers:clipboard 1",
   	recipe = {
      	{ "group:wood" },
      	{ mats.paper },
   	}
})


minetest.register_craft ({
   	output = "lwcomputers:ink_cartridge 1",
   	recipe = {
      	{ mats.dye_black, mats.dye_red },
      	{ mats.dye_yellow, mats.dye_blue },
   	}
})



if lwcomp.digilines_supported then

	minetest.register_craft ({
   		output = "lwcomputers:printer 1",
   		recipe = {
      		{ mats.stone, mats.steel_ingot, mats.stick },
      		{ mats.tin_ingot, mats.clay_lump, mats.tin_ingot },
      		{ mats.stick, mats.copper_ingot, mats.coal_lump },
   		}
	})


	minetest.register_craft ({
   		output = "lwcomputers:digipanel32",
   		recipe = {
      		{ "group:wood", mats.glass, "" },
      		{ mats.copper_ingot, mats.mese_crystal_fragment, mats.mese_crystal_fragment },
      		{ "group:wood", mats.glass, "" },
   		}
	})


	minetest.register_craft ({
   		output = "lwcomputers:digiscreen32",
   		recipe = {
      		{ "group:wood", mats.glass, "group:wood" },
      		{ mats.copper_ingot, mats.mese_crystal_fragment, mats.mese_crystal_fragment },
      		{ "group:wood", mats.glass, "group:wood" },
   		}
	})


	minetest.register_craft ({
   		output = "lwcomputers:digipanel16",
   		recipe = {
      		{ "group:wood", mats.glass, "" },
      		{ mats.copper_ingot, mats.mese_crystal_fragment, "" },
      		{ "group:wood", mats.glass, "" },
   		}
	})


	minetest.register_craft ({
   		output = "lwcomputers:digiscreen16",
   		recipe = {
      		{ "group:wood", mats.glass, "group:wood" },
      		{ mats.copper_ingot, mats.mese_crystal_fragment, "" },
      		{ "group:wood", mats.glass, "group:wood" },
   		}
	})


	minetest.register_craft({
		output = "lwcomputers:monitor",
		recipe = {
			{mats.stone, mats.steel_ingot, mats.glass},
			{mats.copper_ingot,"digilines:wire_std_00000000",mats.tin_ingot},
			{mats.stick,mats.steel_ingot,mats.coal_lump}
		}
	})


end



if not minetest.global_exists ("lwcomponents") then


	if lwcomp.digilines_supported and lwcomp.mesecon_supported then

		minetest.register_craft ({
   			output = "lwcomputers:digiswitch 2",
   			recipe = {
      			{ mats.stone, mats.stone },
      			{ mats.copper_ingot, mats.mese_crystal_fragment },
      			{ mats.stick, mats.stick },
   			}
		})

	end



	if lwcomp.mesecon_supported and mesecon.mvps_push then

		minetest.register_craft ({
   			output = "lwcomputers:movefloor",
   			recipe = {
      			{ mats.stick, mats.stick, mats.stick },
      			{ mats.stick, mats.steel_ingot, mats.stick },
      			{ mats.stick, mats.stick, mats.stick },
   			}
		})
	end



	if 	lwcomp.mesecon_supported and
		lwcomp.digilines_supported then

		minetest.register_craft ({
			output = "lwcomputers:solid_conductor_off 3",
			recipe = {
				{ mats.mese_crystal_fragment, "group:wood", ""},
				{ "group:wood", "group:wood", mats.dye_white },
			},
		})


		minetest.register_craft ({
			output = "lwcomputers:solid_horizontal_conductor_off 3",
			recipe = {
				{ "group:wood", "group:wood", ""},
				{ mats.mese_crystal_fragment, "group:wood", mats.dye_white },
			},
		})

	end


end -- minetest.global_exists ("lwcomponents")



--

-------------------------------------------------------------------------------
--HEAVY OIL FROM COALGAS
local heavy_oil_from_coal_gas ={
  type = "recipe",
  name = "heavy-oil_from_coal-gas",
  category = "fts-reactor",
  enabled = "false",
  energy_required = 1.5,
  ingredients ={
    {type="fluid", name="coal-gas", amount=35},
	{type="item", name="nichrome", amount=2},
	{type="fluid", name="water", amount=40},
  },
  results={
    {type="fluid", name="heavy-oil", amount=25},
	{type="fluid", name="tar", amount=20},
	{type="fluid", name="water", amount=40, temperature=100},
  },
  main_product= "heavy-oil",
  icon = "__base__/graphics/icons/fluid/heavy-oil.png",
}
-------------------------------------------------------------------------------
--LIGHT OIL FROM SYNGAS
local light_oil_from_syngas ={
  type = "recipe",
  name = "light-oil_from_syngas",
  category = "fts-reactor",
  enabled = "false",
  energy_required = 1.5,
  ingredients ={
    {type="fluid", name="syngas", amount=30},
	{type="item", name="nichrome", amount=2},
	{type="fluid", name="water", amount=40},
  },
  results={
    {type="fluid", name="light-oil", amount=30},
	{type="fluid", name="olefin", amount=15},
	{type="fluid", name="water", amount=40, temperature=100},
  },
  main_product= "light-oil",
  icon = "__base__/graphics/icons/fluid/light-oil.png",
}
-------------------------------------------------------------------------------
--PETGAS FROM REFSYNGAS
local petgas_from_refsyngas ={
  type = "recipe",
  name = "petgas_from_refsyngas",
  category = "fts-reactor",
  enabled = "false",
  energy_required = 1.5,
  ingredients ={
    {type="fluid", name="refsyngas", amount=25},
	{type="item", name="nichrome", amount=2},
	{type="fluid", name="light-oil", amount=15},
  },
  results={
    {type="fluid", name="petroleum-gas", amount=40},
	{type="fluid", name="olefin", amount=15},
  },
  main_product= "petroleum-gas",
  icon = "__base__/graphics/icons/fluid/petroleum-gas.png",
}
-------------------------------------------------------------------------------
--REFINED SYNGAS TO LIGHT OIL
local ref_to_light_oil ={
  type = "recipe",
  name = "ref_to_light_oil",
  category = "fts-reactor",
  enabled = "false",
  energy_required = 2,
  ingredients ={
    --{type="fluid", name="hydrogen", amount=25},
	{type="fluid", name="water", amount=50},
	{type="fluid", name="refsyngas", amount=15},

  },
  results={
    {type="fluid", name="light-oil", amount=40},
	{type="fluid", name="water", amount=50, temperature=100},
	{type="fluid", name="carbon-dioxide", amount=20},
  },
  icon = "__pycoalprocessing__/graphics/icons/ref_to_light_oil.png",
  main_product= "light-oil",
  order = "c",
}

-------------------------------------------------------------------------------
--SULFURIC ACID FROM PETGAS
local sulfuric_petgas ={
  type = "recipe",
  name = "sulfuric_petgas",
  category = "fts-reactor",
  enabled = "false",
  energy_required = 2,
  ingredients ={
    {type="fluid", name="petroleum-gas", amount=25},
	{type="fluid", name="water", amount=50},
	{type="fluid", name="acidgas", amount=15},
	{type="item", name="chromium", amount=5},

  },
  results={
    {type="fluid", name="aromatics", amount=10},
	{type="fluid", name="water", amount=50, temperature=100},
	{type="fluid", name="sulfuric-acid", amount=30},
  },
  icon = "__pycoalprocessing__/graphics/icons/sulfuric-petgas.png",
  main_product= "sulfuric-acid",
  order = "c",
}


data:extend{
	heavy_oil_from_coal_gas, light_oil_from_syngas, petgas_from_refsyngas, ref_to_light_oil,
	sulfuric_petgas
}
-- 基础信息
local base_info = {
	group_id = 133225067
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 67003, gadget_id = 70290159, pos = { x = -6195.991, y = 221.615, z = -2486.090 }, rot = { x = 343.304, y = 87.516, z = 352.617 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 67007, gadget_id = 70290159, pos = { x = -6263.050, y = 238.195, z = -2474.453 }, rot = { x = 348.339, y = 121.273, z = 5.816 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 67012, gadget_id = 70290159, pos = { x = -6206.388, y = 227.833, z = -2469.280 }, rot = { x = 0.000, y = 308.066, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 67014, gadget_id = 70290159, pos = { x = -6226.684, y = 231.019, z = -2492.853 }, rot = { x = 0.000, y = 264.670, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 67015, gadget_id = 70290159, pos = { x = -6219.269, y = 237.917, z = -2450.457 }, rot = { x = 0.000, y = 0.000, z = 351.686 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 67016, gadget_id = 70290159, pos = { x = -6205.809, y = 223.330, z = -2519.955 }, rot = { x = 348.268, y = 0.000, z = 8.209 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 67018, gadget_id = 70290159, pos = { x = -6212.609, y = 225.151, z = -2558.665 }, rot = { x = 0.000, y = 339.992, z = 343.951 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 67022, gadget_id = 70290159, pos = { x = -6264.348, y = 239.727, z = -2490.119 }, rot = { x = 0.002, y = 63.092, z = 12.876 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 关闭雾灯
	{ config_id = 1067021, name = "QUEST_FINISH_67021", event = EventType.EVENT_QUEST_FINISH, source = "7223006", condition = "", action = "action_EVENT_QUEST_FINISH_67021", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 67001, gadget_id = 70290159, pos = { x = -6168.077, y = 215.892, z = -2502.160 }, rot = { x = 0.000, y = 113.193, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
		{ config_id = 67002, gadget_id = 70290159, pos = { x = -6175.886, y = 220.028, z = -2473.549 }, rot = { x = 343.304, y = 188.793, z = 352.617 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
		{ config_id = 67004, gadget_id = 70290159, pos = { x = -6215.449, y = 230.465, z = -2473.995 }, rot = { x = 352.189, y = 154.801, z = 350.140 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
		{ config_id = 67005, gadget_id = 70290159, pos = { x = -6233.644, y = 230.075, z = -2513.479 }, rot = { x = 347.848, y = 88.044, z = 3.179 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
		{ config_id = 67006, gadget_id = 70290159, pos = { x = -6198.890, y = 224.290, z = -2546.952 }, rot = { x = 351.010, y = 318.331, z = 5.518 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
		{ config_id = 67008, gadget_id = 70290159, pos = { x = -6142.121, y = 205.192, z = -2521.516 }, rot = { x = 0.000, y = 302.617, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
		{ config_id = 67009, gadget_id = 70290159, pos = { x = -6144.638, y = 208.592, z = -2502.231 }, rot = { x = 0.000, y = 331.543, z = 11.086 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
		{ config_id = 67010, gadget_id = 70290159, pos = { x = -6162.483, y = 216.990, z = -2482.984 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
		{ config_id = 67011, gadget_id = 70290159, pos = { x = -6181.732, y = 217.981, z = -2489.920 }, rot = { x = 355.193, y = 101.011, z = 352.518 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
		{ config_id = 67013, gadget_id = 70290159, pos = { x = -6181.265, y = 222.169, z = -2468.289 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
		{ config_id = 67017, gadget_id = 70290159, pos = { x = -6212.179, y = 225.110, z = -2536.306 }, rot = { x = 0.587, y = 356.371, z = 339.514 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
		{ config_id = 67019, gadget_id = 70290159, pos = { x = -6194.129, y = 224.718, z = -2562.900 }, rot = { x = 0.000, y = 268.560, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
		{ config_id = 67020, gadget_id = 70290159, pos = { x = -6209.908, y = 224.182, z = -2500.082 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
		{ config_id = 67023, gadget_id = 70290159, pos = { x = -6228.755, y = 235.649, z = -2461.109 }, rot = { x = 346.172, y = 198.548, z = 355.417 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
		{ config_id = 67024, gadget_id = 70290159, pos = { x = -6249.921, y = 236.082, z = -2471.142 }, rot = { x = 0.000, y = 77.221, z = 13.419 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { },
		gadgets = { 67003, 67007, 67012, 67014, 67015, 67016, 67018, 67022 },
		regions = { },
		triggers = { "QUEST_FINISH_67021" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_67021(context, evt)
	        for k,v in pairs(gadgets) do
	                ScriptLib.SetGroupGadgetStateByConfigId(context, 133225067, v.config_id, 0)
	        end
	return 0
end
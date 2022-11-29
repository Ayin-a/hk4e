-- 基础信息
local base_info = {
	group_id = 133225059
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
	{ config_id = 59001, gadget_id = 70290159, pos = { x = -6265.558, y = 219.564, z = -2958.381 }, rot = { x = 358.974, y = 198.377, z = 356.098 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 59003, gadget_id = 70290159, pos = { x = -6268.369, y = 222.711, z = -2908.482 }, rot = { x = 354.697, y = 242.649, z = 354.346 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 59004, gadget_id = 70290159, pos = { x = -6297.803, y = 216.801, z = -2909.359 }, rot = { x = 354.544, y = 131.319, z = 355.667 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 59005, gadget_id = 70290159, pos = { x = -6257.632, y = 227.461, z = -2951.242 }, rot = { x = 338.659, y = 238.020, z = 343.473 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 59007, gadget_id = 70290159, pos = { x = -6246.343, y = 233.846, z = -2936.665 }, rot = { x = 5.007, y = 0.000, z = 348.948 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 59009, gadget_id = 70290159, pos = { x = -6229.646, y = 237.881, z = -2940.427 }, rot = { x = 353.052, y = 263.820, z = 10.145 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 59010, gadget_id = 70290159, pos = { x = -6265.963, y = 226.029, z = -2935.095 }, rot = { x = 3.970, y = 186.702, z = 327.821 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 任务结束关闭雾灯
	{ config_id = 1059008, name = "QUEST_FINISH_59008", event = EventType.EVENT_QUEST_FINISH, source = "7217230", condition = "", action = "action_EVENT_QUEST_FINISH_59008", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 59002, gadget_id = 70290159, pos = { x = -6260.857, y = 229.028, z = -2935.673 }, rot = { x = 353.337, y = 226.493, z = 356.041 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
		{ config_id = 59006, gadget_id = 70290159, pos = { x = -6249.952, y = 231.703, z = -2951.841 }, rot = { x = 350.388, y = 336.487, z = 4.155 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
		{ config_id = 59012, gadget_id = 70290159, pos = { x = -6280.666, y = 222.492, z = -2947.838 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
		{ config_id = 59013, gadget_id = 70290159, pos = { x = -6265.074, y = 223.547, z = -2950.138 }, rot = { x = 4.404, y = 28.758, z = 348.146 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
		{ config_id = 59014, gadget_id = 70290159, pos = { x = -6238.406, y = 239.374, z = -2929.238 }, rot = { x = 0.000, y = 208.502, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 }
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
		gadgets = { 59001, 59003, 59004, 59005, 59007, 59009, 59010 },
		regions = { },
		triggers = { "QUEST_FINISH_59008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_59008(context, evt)
	for k,v in pairs(gadgets) do
	                ScriptLib.SetGroupGadgetStateByConfigId(context, 133225059, v.config_id, 0)
	        end
	
	return 0
end
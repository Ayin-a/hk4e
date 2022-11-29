-- 基础信息
local base_info = {
	group_id = 133210201
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
	{ config_id = 201001, gadget_id = 70900393, pos = { x = -4024.136, y = 201.525, z = -718.037 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 17 },
	{ config_id = 201002, gadget_id = 70710497, pos = { x = -4049.705, y = 200.705, z = -769.511 }, rot = { x = 0.000, y = 0.202, z = 0.019 }, level = 30, state = GadgetState.GearStart, area_id = 17 },
	{ config_id = 201003, gadget_id = 70900393, pos = { x = -4043.915, y = 200.671, z = -776.446 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 17 },
	{ config_id = 201004, gadget_id = 70710482, pos = { x = -4026.835, y = 201.130, z = -726.318 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 17 },
	{ config_id = 201005, gadget_id = 70900393, pos = { x = -4039.904, y = 200.421, z = -774.107 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 201006, gadget_id = 70900393, pos = { x = -4034.279, y = 200.466, z = -736.052 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 17 },
	{ config_id = 201007, gadget_id = 70710485, pos = { x = -4045.078, y = 203.340, z = -772.006 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1201008, name = "QUEST_START_201008", event = EventType.EVENT_QUEST_START, source = "1202302", condition = "", action = "action_EVENT_QUEST_START_201008" }
}

-- 变量
variables = {
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
		gadgets = { 201001, 201002, 201003, 201004, 201005, 201006, 201007 },
		regions = { },
		triggers = { "QUEST_START_201008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_201008(context, evt)
	-- 将configid为 201002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 201002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
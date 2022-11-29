-- 基础信息
local base_info = {
	group_id = 133107220
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
	{ config_id = 220001, gadget_id = 70710607, pos = { x = -782.700, y = 206.365, z = 733.194 }, rot = { x = 0.000, y = 16.143, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 220002, gadget_id = 70710608, pos = { x = -782.700, y = 206.365, z = 733.194 }, rot = { x = 0.000, y = 328.847, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 8 },
	{ config_id = 220003, gadget_id = 70710495, pos = { x = -782.465, y = 206.365, z = 733.870 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 220005, gadget_id = 70710589, pos = { x = -783.467, y = 206.365, z = 733.297 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 220006, gadget_id = 70710493, pos = { x = -782.985, y = 206.365, z = 733.652 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1220004, name = "QUEST_FINISH_220004", event = EventType.EVENT_QUEST_FINISH, source = "7183104", condition = "", action = "action_EVENT_QUEST_FINISH_220004" }
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
		gadgets = { 220001, 220003, 220005, 220006 },
		regions = { },
		triggers = { "QUEST_FINISH_220004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_220004(context, evt)
	-- 创建id为220002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 220002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
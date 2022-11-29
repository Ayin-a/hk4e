-- 基础信息
local base_info = {
	group_id = 166001303
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
	{ config_id = 303005, gadget_id = 70710708, pos = { x = 457.118, y = 491.775, z = 477.634 }, rot = { x = 0.000, y = 0.000, z = 180.000 }, level = 1, area_id = 300 },
	{ config_id = 303006, gadget_id = 70710708, pos = { x = 500.345, y = 491.215, z = 523.606 }, rot = { x = 0.000, y = 90.000, z = 180.000 }, level = 1, area_id = 300 },
	{ config_id = 303007, gadget_id = 70710708, pos = { x = 457.167, y = 491.195, z = 568.421 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 1, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1303001, name = "QUEST_FINISH_303001", event = EventType.EVENT_QUEST_FINISH, source = "800517", condition = "", action = "action_EVENT_QUEST_FINISH_303001", trigger_count = 0 },
	{ config_id = 1303004, name = "QUEST_FINISH_303004", event = EventType.EVENT_QUEST_FINISH, source = "800519", condition = "", action = "action_EVENT_QUEST_FINISH_303004", trigger_count = 0 }
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
		gadgets = { 303005, 303006, 303007 },
		regions = { },
		triggers = { "QUEST_FINISH_303001", "QUEST_FINISH_303004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_303001(context, evt)
	-- 将configid为 303007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 303007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_303004(context, evt)
	-- 将configid为 303005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 303005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 303006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 303006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
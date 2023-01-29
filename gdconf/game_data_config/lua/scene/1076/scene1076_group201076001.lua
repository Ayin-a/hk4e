-- 基础信息
local base_info = {
	group_id = 201076001
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
	{ config_id = 1001, gadget_id = 70350454, pos = { x = -4.041, y = 1.449, z = 7.698 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true, room = 1 },
	{ config_id = 1002, gadget_id = 70290732, pos = { x = 16.597, y = -0.022, z = 15.414 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 1003, gadget_id = 70290732, pos = { x = 24.435, y = -0.033, z = 10.057 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, room = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001004, name = "QUEST_FINISH_1004", event = EventType.EVENT_QUEST_FINISH, source = "7066518", condition = "", action = "action_EVENT_QUEST_FINISH_1004" },
	{ config_id = 1001005, name = "QUEST_FINISH_1005", event = EventType.EVENT_QUEST_FINISH, source = "7052605", condition = "", action = "action_EVENT_QUEST_FINISH_1005" }
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
		gadgets = { 1001, 1002, 1003 },
		regions = { },
		triggers = { "QUEST_FINISH_1004", "QUEST_FINISH_1005" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_1004(context, evt)
	-- 将configid为 1001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_1005(context, evt)
	-- 将configid为 1001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
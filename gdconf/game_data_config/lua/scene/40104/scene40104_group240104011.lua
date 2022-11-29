-- 基础信息
local base_info = {
	group_id = 240104011
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
	{ config_id = 13, gadget_id = 70340012, pos = { x = 0.000, y = 0.000, z = -46.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 14, gadget_id = 70350008, pos = { x = -0.370, y = 3.200, z = -42.502 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 15, gadget_id = 70350008, pos = { x = 0.915, y = 3.200, z = -42.116 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 16, gadget_id = 70350008, pos = { x = 1.360, y = 3.200, z = -42.332 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 17, gadget_id = 70350008, pos = { x = -0.650, y = 3.200, z = -42.336 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 18, gadget_id = 70350008, pos = { x = 1.414, y = 3.200, z = -42.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19, gadget_id = 70350008, pos = { x = -0.485, y = 3.200, z = -42.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000028, name = "DUNGEON_SETTLE_28", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "condition_EVENT_DUNGEON_SETTLE_28", action = "action_EVENT_DUNGEON_SETTLE_28" },
	{ config_id = 1000029, name = "DUNGEON_REWARD_GET_29", event = EventType.EVENT_DUNGEON_REWARD_GET, source = "", condition = "", action = "action_EVENT_DUNGEON_REWARD_GET_29" }
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
		gadgets = { 13, 14, 15, 16, 17, 18, 19 },
		regions = { },
		triggers = { "DUNGEON_SETTLE_28" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_DUNGEON_SETTLE_28(context, evt)
	-- 判断副本成功
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_28(context, evt)
	-- 将configid为 13 的物件更改为状态 GadgetState.StatueActive
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13, GadgetState.StatueActive) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 改变指定group组240104010中， configid为12的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240104010, 12, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240104009, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_DUNGEON_REWARD_GET_29(context, evt)
	-- 将configid为 13 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
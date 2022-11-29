-- 基础信息
local base_info = {
	group_id = 144004081
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
	-- 触发靶标出现的开关
	{ config_id = 81001, gadget_id = 70360006, pos = { x = -789.356, y = 185.511, z = 20.969 }, rot = { x = 0.000, y = 0.000, z = 6.612 }, level = 1, area_id = 103 },
	{ config_id = 81002, gadget_id = 70211112, pos = { x = -787.645, y = 185.764, z = 24.379 }, rot = { x = 0.000, y = 0.000, z = 4.270 }, level = 16, drop_tag = "解谜中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 103 },
	{ config_id = 81003, gadget_id = 70950076, pos = { x = -804.000, y = 189.000, z = 11.251 }, rot = { x = 0.000, y = 53.885, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 103 },
	{ config_id = 81005, gadget_id = 70350085, pos = { x = -842.100, y = 126.000, z = -11.670 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 81026, gadget_id = 70950073, pos = { x = -842.100, y = 126.000, z = -11.670 }, rot = { x = 328.000, y = 64.389, z = 0.000 }, level = 1, area_id = 103 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1081004, name = "GADGET_STATE_CHANGE_81004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_81004", action = "action_EVENT_GADGET_STATE_CHANGE_81004", trigger_count = 0 },
	-- 销毁靶标后创建宝箱
	{ config_id = 1081069, name = "ANY_GADGET_DIE_81069", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_81069", action = "action_EVENT_ANY_GADGET_DIE_81069" },
	-- 开启了宝箱后刷新Group进度
	{ config_id = 1081070, name = "GADGET_STATE_CHANGE_81070", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_81070", action = "action_EVENT_GADGET_STATE_CHANGE_81070" },
	{ config_id = 1081071, name = "GADGET_STATE_CHANGE_81071", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_81071", action = "action_EVENT_GADGET_STATE_CHANGE_81071", trigger_count = 0 },
	{ config_id = 1081072, name = "GADGET_STATE_CHANGE_81072", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_81072", action = "action_EVENT_GADGET_STATE_CHANGE_81072", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hoop1Pos", value = 0, no_refresh = false },
	{ config_id = 2, name = "hoop2Pos", value = 0, no_refresh = false },
	{ config_id = 3, name = "complete", value = 0, no_refresh = false },
	{ config_id = 4, name = "killedHoops", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 3,
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
		-- description = [默认加载的Entities],
		monsters = { },
		gadgets = { 81001, 81002, 81003, 81026 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_81004", "ANY_GADGET_DIE_81069", "GADGET_STATE_CHANGE_81070", "GADGET_STATE_CHANGE_81071", "GADGET_STATE_CHANGE_81072" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [羽球元素靶标],
		monsters = { },
		gadgets = { 81005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_81004(context, evt)
	if 81001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_81004(context, evt)
	-- 将configid为 81003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 81003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_81069(context, evt)
	if 81026 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_81069(context, evt)
	-- 将configid为 81002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 81002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "complete" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "complete", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144004081, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_81070(context, evt)
	if 81002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_81070(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004081, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_81071(context, evt)
	if 81001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"complete"为0
	if ScriptLib.GetGroupVariableValue(context, "complete") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_81071(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004081, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_81072(context, evt)
	if 81001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_81072(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144004081, 2)
	
	-- 将configid为 81003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 81003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
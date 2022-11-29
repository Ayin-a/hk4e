-- 基础信息
local base_info = {
	group_id = 133103378
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
	{ config_id = 378001, gadget_id = 70360006, pos = { x = 320.690, y = 187.043, z = 1548.336 }, rot = { x = 0.000, y = 196.100, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 378002, gadget_id = 70690006, pos = { x = 320.466, y = 187.188, z = 1548.343 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, showcutscene = true, area_id = 6 },
	{ config_id = 378007, gadget_id = 70690001, pos = { x = 320.736, y = 206.115, z = 1548.423 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1378004, name = "GADGET_STATE_CHANGE_378004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_378004", action = "action_EVENT_GADGET_STATE_CHANGE_378004", trigger_count = 0 },
	{ config_id = 1378005, name = "GADGET_STATE_CHANGE_378005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_378005", action = "action_EVENT_GADGET_STATE_CHANGE_378005", trigger_count = 0 },
	{ config_id = 1378006, name = "GADGET_CREATE_378006", event = EventType.EVENT_GADGET_CREATE, source = "111", condition = "condition_EVENT_GADGET_CREATE_378006", action = "action_EVENT_GADGET_CREATE_378006", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 378001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_378004", "GADGET_STATE_CHANGE_378005", "GADGET_CREATE_378006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 378002, 378007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
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
function condition_EVENT_GADGET_STATE_CHANGE_378004(context, evt)
	if 378001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_378004(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1010, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103378, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_378005(context, evt)
	if 378001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_378005(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1010, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103378, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_378006(context, evt)
	if 378001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_378006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103378, 2)
	
	return 0
end
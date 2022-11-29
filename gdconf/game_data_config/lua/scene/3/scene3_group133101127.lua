-- 基础信息
local base_info = {
	group_id = 133101127
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
	{ config_id = 127001, gadget_id = 70220032, pos = { x = 1425.281, y = 212.767, z = 1061.433 }, rot = { x = 0.000, y = 340.028, z = 0.000 }, level = 19, area_id = 5 },
	{ config_id = 127002, gadget_id = 70690001, pos = { x = 1419.365, y = 212.132, z = 1055.733 }, rot = { x = 0.000, y = 202.919, z = 0.000 }, level = 19, showcutscene = true, isOneoff = true, persistent = true, area_id = 5 },
	{ config_id = 127003, gadget_id = 70690001, pos = { x = 1411.871, y = 212.132, z = 1038.726 }, rot = { x = 0.000, y = 204.196, z = 0.000 }, level = 19, showcutscene = true, isOneoff = true, persistent = true, area_id = 5 },
	{ config_id = 127007, gadget_id = 70690001, pos = { x = 1404.208, y = 212.132, z = 1021.673 }, rot = { x = 0.000, y = 204.196, z = 0.000 }, level = 19, showcutscene = true, isOneoff = true, persistent = true, area_id = 5 },
	{ config_id = 127008, gadget_id = 70690001, pos = { x = 1396.233, y = 212.132, z = 1003.925 }, rot = { x = 0.000, y = 204.196, z = 0.000 }, level = 19, showcutscene = true, isOneoff = true, persistent = true, area_id = 5 },
	{ config_id = 127009, gadget_id = 70690001, pos = { x = 1389.167, y = 212.132, z = 988.199 }, rot = { x = 0.000, y = 204.196, z = 0.000 }, level = 19, showcutscene = true, isOneoff = true, persistent = true, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1127004, name = "GADGET_STATE_CHANGE_127004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_127004", action = "action_EVENT_GADGET_STATE_CHANGE_127004", trigger_count = 0 },
	{ config_id = 1127005, name = "GADGET_STATE_CHANGE_127005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_127005", action = "action_EVENT_GADGET_STATE_CHANGE_127005", trigger_count = 0 },
	{ config_id = 1127006, name = "GADGET_CREATE_127006", event = EventType.EVENT_GADGET_CREATE, source = "111", condition = "condition_EVENT_GADGET_CREATE_127006", action = "action_EVENT_GADGET_CREATE_127006", trigger_count = 0 }
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
		gadgets = { 127001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_127004", "GADGET_STATE_CHANGE_127005", "GADGET_CREATE_127006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 127002, 127003, 127007, 127008, 127009 },
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
function condition_EVENT_GADGET_STATE_CHANGE_127004(context, evt)
	if 127001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_127004(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1009, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101127, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_127005(context, evt)
	if 127001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_127005(context, evt)
	-- 将configid为 127002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 127002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1009, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101127, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_127006(context, evt)
	if 127001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_127006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101127, 2)
	
	return 0
end
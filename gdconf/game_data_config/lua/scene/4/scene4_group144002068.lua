-- 基础信息
local base_info = {
	group_id = 144002068
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
	{ config_id = 68001, gadget_id = 70360006, pos = { x = 412.615, y = 194.195, z = -631.162 }, rot = { x = 358.407, y = 5.018, z = 348.276 }, level = 1, area_id = 101 },
	{ config_id = 68002, gadget_id = 70211102, pos = { x = 405.249, y = 195.029, z = -633.906 }, rot = { x = 0.000, y = 45.384, z = 0.000 }, level = 26, drop_tag = "解谜低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 101 },
	{ config_id = 68003, gadget_id = 70950076, pos = { x = 406.467, y = 197.332, z = -626.029 }, rot = { x = 352.703, y = 134.001, z = 2.491 }, level = 1, is_use_point_array = true, area_id = 101 },
	{ config_id = 68004, gadget_id = 70350240, pos = { x = 406.395, y = 193.706, z = -626.034 }, rot = { x = 1.404, y = 285.093, z = 352.420 }, level = 1, area_id = 101 },
	{ config_id = 68005, gadget_id = 70950073, pos = { x = 403.835, y = 197.568, z = -623.854 }, rot = { x = 5.715, y = 314.538, z = 7.993 }, level = 1, is_use_point_array = true, area_id = 101 },
	{ config_id = 68013, gadget_id = 70350085, pos = { x = 403.835, y = 197.568, z = -623.854 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1068006, name = "GADGET_STATE_CHANGE_68006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_68006", action = "action_EVENT_GADGET_STATE_CHANGE_68006", trigger_count = 0 },
	{ config_id = 1068007, name = "GADGET_STATE_CHANGE_68007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_68007", action = "action_EVENT_GADGET_STATE_CHANGE_68007", trigger_count = 0 },
	-- 销毁靶标后创建宝箱
	{ config_id = 1068009, name = "ANY_GADGET_DIE_68009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_68009", action = "action_EVENT_ANY_GADGET_DIE_68009" },
	-- 开启了宝箱后刷新Group进度
	{ config_id = 1068010, name = "GADGET_STATE_CHANGE_68010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_68010", action = "action_EVENT_GADGET_STATE_CHANGE_68010" },
	{ config_id = 1068011, name = "GADGET_STATE_CHANGE_68011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_68011", action = "action_EVENT_GADGET_STATE_CHANGE_68011", trigger_count = 0 },
	{ config_id = 1068012, name = "GADGET_STATE_CHANGE_68012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_68012", action = "action_EVENT_GADGET_STATE_CHANGE_68012", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "complete", value = 0, no_refresh = false }
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
		gadgets = { 68001, 68002, 68003, 68004, 68005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_68006", "GADGET_STATE_CHANGE_68007", "ANY_GADGET_DIE_68009", "GADGET_STATE_CHANGE_68010", "GADGET_STATE_CHANGE_68011", "GADGET_STATE_CHANGE_68012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [加载羽球元素靶标&判定玩法成功],
		monsters = { },
		gadgets = { 68013 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = [加载羽球元素靶标&判定玩法成功的方法2],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = [玩法完成后的空Suite],
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
function condition_EVENT_GADGET_STATE_CHANGE_68006(context, evt)
	if 68001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_68006(context, evt)
	-- 将configid为 68003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 68003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 68004 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 68004, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_68007(context, evt)
	if 68001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_68007(context, evt)
	-- 将configid为 68003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 68003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 68004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 68004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_68009(context, evt)
	if 68005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_68009(context, evt)
	-- 将configid为 68002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 68002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "complete" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "complete", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144002068, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_68010(context, evt)
	if 68002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_68010(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144002068, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_68011(context, evt)
	if 68001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"complete"为0
	if ScriptLib.GetGroupVariableValue(context, "complete") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_68011(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002068, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_68012(context, evt)
	if 68001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_68012(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144002068, 2)
	
	return 0
end
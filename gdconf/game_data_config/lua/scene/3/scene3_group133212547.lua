-- 基础信息
local base_info = {
	group_id = 133212547
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 547001, monster_id = 25100401, pos = { x = -3695.580, y = 244.944, z = -2234.709 }, rot = { x = 0.000, y = 57.298, z = 0.000 }, level = 27, drop_tag = "高阶武士", affix = { 1101 }, pose_id = 1, area_id = 13 },
	{ config_id = 547002, monster_id = 25080301, pos = { x = -3692.013, y = 244.654, z = -2233.410 }, rot = { x = 0.000, y = 253.292, z = 0.000 }, level = 27, drop_id = 1000100, isOneoff = true, pose_id = 1005, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 547003, gadget_id = 70900400, pos = { x = -3693.167, y = 244.780, z = -2233.447 }, rot = { x = 0.000, y = 118.142, z = 0.000 }, level = 27, persistent = true, area_id = 13 },
	{ config_id = 547010, gadget_id = 70211101, pos = { x = -3690.632, y = 244.420, z = -2233.340 }, rot = { x = 0.000, y = 269.418, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1547005, name = "GADGET_STATE_CHANGE_547005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_547005", action = "action_EVENT_GADGET_STATE_CHANGE_547005", trigger_count = 0 },
	{ config_id = 1547008, name = "ANY_MONSTER_DIE_547008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_547008", action = "action_EVENT_ANY_MONSTER_DIE_547008", trigger_count = 0 },
	{ config_id = 1547009, name = "GROUP_LOAD_547009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_547009", action = "action_EVENT_GROUP_LOAD_547009", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 547004, gadget_id = 70360001, pos = { x = -3688.901, y = 244.559, z = -2235.489 }, rot = { x = 0.000, y = 342.724, z = 0.000 }, level = 27, area_id = 13 }
	},
	triggers = {
		{ config_id = 1547006, name = "GADGET_CREATE_547006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_547006", action = "action_EVENT_GADGET_CREATE_547006", trigger_count = 0 },
		{ config_id = 1547007, name = "SELECT_OPTION_547007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_547007", action = "action_EVENT_SELECT_OPTION_547007", trigger_count = 0 }
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
		-- description = ,
		monsters = { 547002 },
		gadgets = { 547003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_547005", "GROUP_LOAD_547009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 547001 },
		gadgets = { 547003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_547005", "ANY_MONSTER_DIE_547008", "GROUP_LOAD_547009" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 547003, 547010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_547005", "GROUP_LOAD_547009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_547005(context, evt)
	if 547003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_547005(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133212547, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_547008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_547008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133212547, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 针对当前group内变量名为 "Sword_01" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "Sword_01", 1, 133212263) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 547003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 547003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_547009(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133212547, 547003) then
		return 
	true
	end
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_547009(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133212547, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将configid为 547003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 547003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
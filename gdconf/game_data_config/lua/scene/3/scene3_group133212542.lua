-- 基础信息
local base_info = {
	group_id = 133212542
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 542001, monster_id = 25100301, pos = { x = -3567.482, y = 200.472, z = -2477.507 }, rot = { x = 0.000, y = 128.178, z = 0.000 }, level = 27, drop_tag = "高阶武士", affix = { 1101 }, pose_id = 1, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 542002, gadget_id = 70211101, pos = { x = -3567.260, y = 200.291, z = -2484.424 }, rot = { x = 0.000, y = 343.268, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 },
	{ config_id = 542003, gadget_id = 70900400, pos = { x = -3566.332, y = 200.735, z = -2480.279 }, rot = { x = 0.000, y = 118.142, z = 0.000 }, level = 27, persistent = true, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1542005, name = "GADGET_STATE_CHANGE_542005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_542005", action = "action_EVENT_GADGET_STATE_CHANGE_542005", trigger_count = 0 },
	{ config_id = 1542008, name = "ANY_MONSTER_DIE_542008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_542008", action = "action_EVENT_ANY_MONSTER_DIE_542008", trigger_count = 0 },
	{ config_id = 1542009, name = "GROUP_LOAD_542009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_542009", action = "action_EVENT_GROUP_LOAD_542009", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 542004, gadget_id = 70360001, pos = { x = -3562.833, y = 200.070, z = -2479.957 }, rot = { x = 0.000, y = 342.724, z = 0.000 }, level = 27, area_id = 13 }
	},
	triggers = {
		{ config_id = 1542006, name = "GADGET_CREATE_542006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_542006", action = "action_EVENT_GADGET_CREATE_542006", trigger_count = 0 },
		{ config_id = 1542007, name = "SELECT_OPTION_542007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_542007", action = "action_EVENT_SELECT_OPTION_542007", trigger_count = 0 }
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
		monsters = { },
		gadgets = { 542003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_542005", "GROUP_LOAD_542009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 542001 },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_542005", "ANY_MONSTER_DIE_542008", "GROUP_LOAD_542009" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 542002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_542005", "GROUP_LOAD_542009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_542005(context, evt)
	if 542003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_542005(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133212542, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_542008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_542008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133212542, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 针对当前group内变量名为 "Sword_01" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "Sword_01", 1, 133212263) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 542003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 542003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_542009(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133212542, 542003) then
		return 
	true
	end
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_542009(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133212542, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将configid为 542003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 542003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
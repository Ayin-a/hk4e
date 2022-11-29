-- 基础信息
local base_info = {
	group_id = 133212248
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 248001, monster_id = 25100401, pos = { x = -3829.471, y = 200.966, z = -2079.490 }, rot = { x = 0.000, y = 63.247, z = 0.000 }, level = 27, drop_tag = "高阶武士", affix = { 1101 }, pose_id = 1, area_id = 13 },
	{ config_id = 248008, monster_id = 25100101, pos = { x = -3823.088, y = 200.803, z = -2078.226 }, rot = { x = 0.000, y = 253.811, z = 0.000 }, level = 27, drop_tag = "高阶武士", disableWander = true, affix = { 1101 }, isOneoff = true, pose_id = 1002, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 248002, gadget_id = 70900400, pos = { x = -3826.569, y = 200.872, z = -2078.850 }, rot = { x = 0.000, y = 118.142, z = 0.000 }, level = 27, persistent = true, area_id = 13 },
	{ config_id = 248010, gadget_id = 70211101, pos = { x = -3833.475, y = 202.083, z = -2086.556 }, rot = { x = 0.000, y = 79.936, z = 5.272 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1248004, name = "GADGET_STATE_CHANGE_248004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_248004", action = "action_EVENT_GADGET_STATE_CHANGE_248004", trigger_count = 0 },
	{ config_id = 1248007, name = "ANY_MONSTER_DIE_248007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_248007", action = "action_EVENT_ANY_MONSTER_DIE_248007", trigger_count = 0 },
	{ config_id = 1248009, name = "GROUP_LOAD_248009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_248009", action = "action_EVENT_GROUP_LOAD_248009", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 248003, gadget_id = 70360001, pos = { x = -3823.012, y = 201.211, z = -2078.073 }, rot = { x = 0.000, y = 342.724, z = 0.000 }, level = 27, area_id = 13 }
	},
	triggers = {
		{ config_id = 1248005, name = "GADGET_CREATE_248005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_248005", action = "action_EVENT_GADGET_CREATE_248005", trigger_count = 0 },
		{ config_id = 1248006, name = "SELECT_OPTION_248006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_248006", action = "action_EVENT_SELECT_OPTION_248006", trigger_count = 0 }
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
		monsters = { 248008 },
		gadgets = { 248002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_248004", "GROUP_LOAD_248009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 248001 },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_248004", "ANY_MONSTER_DIE_248007", "GROUP_LOAD_248009" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 248010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_248004", "GROUP_LOAD_248009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_248004(context, evt)
	if 248002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_248004(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133212248, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_248007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_248007(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133212248, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 针对当前group内变量名为 "Sword_01" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "Sword_01", 1, 133212263) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 248002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 248002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_248009(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133212248, 248002) then
		return 
	true
	end
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_248009(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133212248, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将configid为 248002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 248002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
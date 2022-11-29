-- 基础信息
local base_info = {
	group_id = 133212545
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 545001, monster_id = 25100401, pos = { x = -3941.597, y = 230.613, z = -2113.623 }, rot = { x = 0.000, y = 164.689, z = 0.000 }, level = 27, drop_tag = "高阶武士", affix = { 1101 }, pose_id = 1, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 545002, gadget_id = 70211101, pos = { x = -3939.581, y = 229.922, z = -2114.530 }, rot = { x = 0.000, y = 213.935, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 },
	{ config_id = 545003, gadget_id = 70900400, pos = { x = -3941.273, y = 229.302, z = -2116.092 }, rot = { x = 0.000, y = 118.142, z = 0.000 }, level = 27, persistent = true, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1545005, name = "GADGET_STATE_CHANGE_545005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_545005", action = "action_EVENT_GADGET_STATE_CHANGE_545005", trigger_count = 0 },
	{ config_id = 1545008, name = "ANY_MONSTER_DIE_545008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_545008", action = "action_EVENT_ANY_MONSTER_DIE_545008", trigger_count = 0 },
	{ config_id = 1545009, name = "GROUP_LOAD_545009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_545009", action = "action_EVENT_GROUP_LOAD_545009", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 545004, gadget_id = 70360001, pos = { x = -3937.709, y = 228.806, z = -2116.458 }, rot = { x = 0.000, y = 342.724, z = 0.000 }, level = 27, area_id = 13 }
	},
	triggers = {
		{ config_id = 1545006, name = "GADGET_CREATE_545006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_545006", action = "action_EVENT_GADGET_CREATE_545006", trigger_count = 0 },
		{ config_id = 1545007, name = "SELECT_OPTION_545007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_545007", action = "action_EVENT_SELECT_OPTION_545007", trigger_count = 0 }
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
		gadgets = { 545003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_545005", "GROUP_LOAD_545009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 545001 },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_545005", "ANY_MONSTER_DIE_545008", "GROUP_LOAD_545009" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 545002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_545005", "GROUP_LOAD_545009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_545005(context, evt)
	if 545003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_545005(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133212545, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_545008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_545008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133212545, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 针对当前group内变量名为 "Sword_01" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "Sword_01", 1, 133212263) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 545003 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 545003, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_545009(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133212545, 545003) then
		return 
	true
	end
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_545009(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133212545, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将configid为 545003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 545003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
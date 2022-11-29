-- 基础信息
local base_info = {
	group_id = 133302536
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 536011, monster_id = 26120101, pos = { x = -721.598, y = 225.149, z = 2241.851 }, rot = { x = 0.000, y = 109.702, z = 0.000 }, level = 27, drop_tag = "大蕈兽", pose_id = 201, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 536001, gadget_id = 70500000, pos = { x = -714.025, y = 225.082, z = 2240.344 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2004, area_id = 24 },
	{ config_id = 536002, gadget_id = 70500000, pos = { x = -720.866, y = 225.129, z = 2236.059 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2004, area_id = 24 },
	{ config_id = 536003, gadget_id = 70500000, pos = { x = -724.424, y = 225.145, z = 2238.743 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2004, area_id = 24 },
	{ config_id = 536004, gadget_id = 70500000, pos = { x = -713.683, y = 225.201, z = 2246.236 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2004, area_id = 24 },
	{ config_id = 536005, gadget_id = 70500000, pos = { x = -720.911, y = 224.899, z = 2250.130 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2004, area_id = 24 },
	{ config_id = 536006, gadget_id = 70500000, pos = { x = -723.824, y = 224.996, z = 2245.666 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2004, area_id = 24 },
	{ config_id = 536007, gadget_id = 70500000, pos = { x = -727.860, y = 225.037, z = 2241.976 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2004, area_id = 24 },
	{ config_id = 536008, gadget_id = 70500000, pos = { x = -717.783, y = 225.023, z = 2245.826 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2004, area_id = 24 },
	{ config_id = 536009, gadget_id = 70500000, pos = { x = -718.634, y = 225.073, z = 2240.204 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2004, area_id = 24 },
	{ config_id = 536013, gadget_id = 70211011, pos = { x = -724.564, y = 225.028, z = 2242.123 }, rot = { x = 0.000, y = 94.277, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1536010, name = "GATHER_536010", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_536010", action = "action_EVENT_GATHER_536010", forbid_guest = false },
	{ config_id = 1536012, name = "ANY_MONSTER_DIE_536012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_536012", action = "action_EVENT_ANY_MONSTER_DIE_536012" },
	{ config_id = 1536014, name = "VARIABLE_CHANGE_536014", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_536014", action = "action_EVENT_VARIABLE_CHANGE_536014" },
	{ config_id = 1536015, name = "GATHER_536015", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_536015", action = "action_EVENT_GATHER_536015", forbid_guest = false },
	{ config_id = 1536016, name = "GATHER_536016", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_536016", action = "action_EVENT_GATHER_536016", forbid_guest = false },
	{ config_id = 1536017, name = "GATHER_536017", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_536017", action = "action_EVENT_GATHER_536017", forbid_guest = false },
	{ config_id = 1536018, name = "GATHER_536018", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_536018", action = "action_EVENT_GATHER_536018", forbid_guest = false },
	{ config_id = 1536019, name = "GATHER_536019", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_536019", action = "action_EVENT_GATHER_536019", forbid_guest = false },
	{ config_id = 1536020, name = "GATHER_536020", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_536020", action = "action_EVENT_GATHER_536020", forbid_guest = false },
	{ config_id = 1536021, name = "GATHER_536021", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_536021", action = "action_EVENT_GATHER_536021", forbid_guest = false },
	{ config_id = 1536022, name = "GATHER_536022", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_536022", action = "action_EVENT_GATHER_536022", forbid_guest = false },
	-- 双重保底
	{ config_id = 1536023, name = "GROUP_LOAD_536023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_536023", action = "action_EVENT_GROUP_LOAD_536023", trigger_count = 0 },
	{ config_id = 1536024, name = "GATHER_536024", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_536024", action = "action_EVENT_GATHER_536024" },
	-- baodi
	{ config_id = 1536025, name = "GROUP_LOAD_536025", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_536025", action = "action_EVENT_GROUP_LOAD_536025", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "liaolidui", value = 0, no_refresh = true }
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
		gadgets = { 536001, 536002, 536003, 536004, 536005, 536006, 536007, 536008, 536009 },
		regions = { },
		triggers = { "GATHER_536010", "VARIABLE_CHANGE_536014", "GATHER_536015", "GATHER_536016", "GATHER_536017", "GATHER_536018", "GATHER_536019", "GATHER_536020", "GATHER_536021", "GATHER_536022", "GROUP_LOAD_536023", "GROUP_LOAD_536025" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 536011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_536012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GATHER_536010(context, evt)
	if 536001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_536010(context, evt)
	-- 针对当前group内变量名为 "liaolidui" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "liaolidui", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_536012(context, evt)
	--判断死亡怪物的configid是否为 536011
	if evt.param1 ~= 536011 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_536012(context, evt)
	-- 创建id为536013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 536013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_536014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"liaolidui"为9
	if ScriptLib.GetGroupVariableValue(context, "liaolidui") ~= 9 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_536014(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133302536, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_536015(context, evt)
	if 536002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_536015(context, evt)
	-- 针对当前group内变量名为 "liaolidui" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "liaolidui", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_536016(context, evt)
	if 536003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_536016(context, evt)
	-- 针对当前group内变量名为 "liaolidui" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "liaolidui", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_536017(context, evt)
	if 536004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_536017(context, evt)
	-- 针对当前group内变量名为 "liaolidui" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "liaolidui", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_536018(context, evt)
	if 536005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_536018(context, evt)
	-- 针对当前group内变量名为 "liaolidui" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "liaolidui", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_536019(context, evt)
	if 536006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_536019(context, evt)
	-- 针对当前group内变量名为 "liaolidui" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "liaolidui", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_536020(context, evt)
	if 536007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_536020(context, evt)
	-- 针对当前group内变量名为 "liaolidui" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "liaolidui", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_536021(context, evt)
	if 536008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_536021(context, evt)
	-- 针对当前group内变量名为 "liaolidui" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "liaolidui", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_536022(context, evt)
	if 536009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_536022(context, evt)
	-- 针对当前group内变量名为 "liaolidui" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "liaolidui", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_536023(context, evt)
	-- 判断变量"liaolidui"为9
	if ScriptLib.GetGroupVariableValue(context, "liaolidui") ~= 9 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_536023(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133302536, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_536024(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133302536}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_536024(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133302536, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_536025(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133302536}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_536025(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133302536, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end
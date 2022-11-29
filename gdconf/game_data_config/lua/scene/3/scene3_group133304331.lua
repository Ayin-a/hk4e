-- 基础信息
local base_info = {
	group_id = 133304331
}

-- Trigger变量
local defs = {
	gadget_id = 331004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 331009, monster_id = 26090201, pos = { x = -1050.849, y = 254.155, z = 2172.946 }, rot = { x = 0.000, y = 50.834, z = 0.000 }, level = 27, drop_tag = "蕈兽", affix = { 5180 }, pose_id = 103, area_id = 24 },
	{ config_id = 331010, monster_id = 26090201, pos = { x = -1040.474, y = 252.280, z = 2172.630 }, rot = { x = 0.000, y = 321.965, z = 0.000 }, level = 27, drop_tag = "蕈兽", affix = { 5180 }, pose_id = 103, area_id = 24 },
	{ config_id = 331011, monster_id = 26090201, pos = { x = -1046.463, y = 252.867, z = 2184.728 }, rot = { x = 0.000, y = 200.842, z = 0.000 }, level = 27, drop_tag = "蕈兽", affix = { 5180 }, pose_id = 103, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 331001, gadget_id = 70900050, pos = { x = -1050.019, y = 253.722, z = 2174.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStop, persistent = true, area_id = 24 },
	{ config_id = 331002, gadget_id = 70900050, pos = { x = -1041.442, y = 252.299, z = 2173.764 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStop, persistent = true, area_id = 24 },
	{ config_id = 331003, gadget_id = 70900050, pos = { x = -1046.633, y = 252.827, z = 2183.232 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStop, persistent = true, area_id = 24 },
	{ config_id = 331004, gadget_id = 70211101, pos = { x = -1045.059, y = 252.356, z = 2179.475 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1331005, name = "GADGET_STATE_CHANGE_331005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_331005", action = "action_EVENT_GADGET_STATE_CHANGE_331005", trigger_count = 0 },
	{ config_id = 1331006, name = "GADGET_STATE_CHANGE_331006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_331006" },
	-- goto 329 suite 1
	{ config_id = 1331007, name = "GADGET_CREATE_331007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_331007", action = "action_EVENT_GADGET_CREATE_331007" },
	{ config_id = 1331008, name = "GROUP_LOAD_331008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_331008", action = "action_EVENT_GROUP_LOAD_331008", trigger_count = 0 },
	{ config_id = 1331013, name = "ANY_MONSTER_DIE_331013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_331013", action = "action_EVENT_ANY_MONSTER_DIE_331013", trigger_count = 0 },
	{ config_id = 1331014, name = "ANY_MONSTER_DIE_331014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_331014", action = "action_EVENT_ANY_MONSTER_DIE_331014", trigger_count = 0 },
	{ config_id = 1331015, name = "ANY_MONSTER_DIE_331015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_331015", action = "action_EVENT_ANY_MONSTER_DIE_331015", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "start", value = 0, no_refresh = true },
	{ config_id = 2, name = "finish", value = 0, no_refresh = true }
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
		monsters = { 331009, 331010, 331011 },
		gadgets = { 331001, 331002, 331003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_331005", "GADGET_STATE_CHANGE_331006", "GADGET_CREATE_331007", "GROUP_LOAD_331008", "ANY_MONSTER_DIE_331013", "ANY_MONSTER_DIE_331014", "ANY_MONSTER_DIE_331015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_331005(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304331, 331001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304331, 331002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304331, 331003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_331005(context, evt)
	-- 创建id为331004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 331004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_331006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_331007(context, evt)
	if defs.gadget_id ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_331007(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133304329, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_331008(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_331008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133304329, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_331013(context, evt)
	--判断死亡怪物的configid是否为 331009
	if evt.param1 ~= 331009 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_331013(context, evt)
	-- 将configid为 331001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 331001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_331014(context, evt)
	--判断死亡怪物的configid是否为 331010
	if evt.param1 ~= 331010 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_331014(context, evt)
	-- 将configid为 331002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 331002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_331015(context, evt)
	--判断死亡怪物的configid是否为 331011
	if evt.param1 ~= 331011 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_331015(context, evt)
	-- 将configid为 331003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 331003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
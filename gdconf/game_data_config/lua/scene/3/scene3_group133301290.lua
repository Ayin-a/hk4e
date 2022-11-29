-- 基础信息
local base_info = {
	group_id = 133301290
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 290001, monster_id = 21010101, pos = { x = -817.115, y = 238.253, z = 3567.339 }, rot = { x = 0.000, y = 267.773, z = 0.000 }, level = 31, drop_id = 1000100, pose_id = 9012, area_id = 23 },
	{ config_id = 290009, monster_id = 21010101, pos = { x = -820.164, y = 238.355, z = 3564.399 }, rot = { x = 0.000, y = 348.986, z = 0.000 }, level = 31, drop_id = 1000100, pose_id = 9012, area_id = 23 },
	{ config_id = 290010, monster_id = 21010101, pos = { x = -822.978, y = 238.251, z = 3566.279 }, rot = { x = 0.000, y = 79.938, z = 0.000 }, level = 31, drop_id = 1000100, pose_id = 9012, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 290002, gadget_id = 70360001, pos = { x = -813.943, y = 238.232, z = 3567.940 }, rot = { x = 0.000, y = 178.195, z = 0.000 }, level = 1, persistent = true, area_id = 23 },
	{ config_id = 290003, gadget_id = 70310229, pos = { x = -820.501, y = 238.132, z = 3566.960 }, rot = { x = 350.993, y = 178.595, z = 354.926 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 23 },
	{ config_id = 290004, gadget_id = 70310467, pos = { x = -820.339, y = 240.052, z = 3567.779 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 290007, gadget_id = 70211001, pos = { x = -822.776, y = 237.952, z = 3567.892 }, rot = { x = 10.291, y = 359.861, z = 358.454 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1290005, name = "ANY_GADGET_DIE_290005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_290005", action = "action_EVENT_ANY_GADGET_DIE_290005", trigger_count = 0 },
	{ config_id = 1290006, name = "ANY_MONSTER_DIE_290006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_290006", action = "action_EVENT_ANY_MONSTER_DIE_290006", trigger_count = 0 },
	-- 通知勾爪group
	{ config_id = 1290008, name = "ANY_GADGET_DIE_290008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_290008", action = "action_EVENT_ANY_GADGET_DIE_290008", trigger_count = 0 },
	-- finish后保底
	{ config_id = 1290011, name = "GROUP_LOAD_290011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_290011", action = "action_EVENT_GROUP_LOAD_290011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 10, name = "finish", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
	end_suite = 1,
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
		monsters = { 290001, 290009, 290010 },
		gadgets = { 290002, 290003, 290004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_290005", "ANY_MONSTER_DIE_290006", "ANY_GADGET_DIE_290008", "GROUP_LOAD_290011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
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
function condition_EVENT_ANY_GADGET_DIE_290005(context, evt)
	if 290003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_290005(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 290002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 290002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为290007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 290007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 290004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_290006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_290006(context, evt)
	-- 将configid为 290003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 290003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_290008(context, evt)
	if 290003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_290008(context, evt)
	-- 将本组内变量名为 "second" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "second", 1, 133301643) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_290011(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_290011(context, evt)
	-- 将configid为 290002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 290002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 290004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为290007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 290007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
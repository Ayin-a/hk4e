-- 基础信息
local base_info = {
	group_id = 133104422
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 422001, monster_id = 20011201, pos = { x = 647.376, y = 200.182, z = 151.379 }, rot = { x = 0.487, y = 66.399, z = 0.240 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 9 },
	{ config_id = 422002, monster_id = 20011001, pos = { x = 636.005, y = 200.116, z = 152.082 }, rot = { x = 1.368, y = 82.631, z = 1.728 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 9 },
	{ config_id = 422003, monster_id = 20010801, pos = { x = 629.067, y = 200.000, z = 151.586 }, rot = { x = 0.000, y = 77.204, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 9 },
	{ config_id = 422012, monster_id = 20011001, pos = { x = 608.434, y = 200.214, z = 139.039 }, rot = { x = 0.000, y = 334.012, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 9 },
	{ config_id = 422013, monster_id = 20010801, pos = { x = 625.218, y = 200.000, z = 149.182 }, rot = { x = 0.000, y = 77.204, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 9 },
	{ config_id = 422014, monster_id = 20010801, pos = { x = 618.171, y = 200.000, z = 146.995 }, rot = { x = 0.000, y = 77.204, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 9 },
	{ config_id = 422015, monster_id = 20011401, pos = { x = 589.297, y = 200.828, z = 127.312 }, rot = { x = 0.368, y = 87.506, z = 0.399 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 9 },
	{ config_id = 422017, monster_id = 20011201, pos = { x = 648.171, y = 200.242, z = 154.037 }, rot = { x = 359.767, y = 155.618, z = 0.491 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 9 },
	{ config_id = 422018, monster_id = 20011001, pos = { x = 604.913, y = 200.193, z = 140.752 }, rot = { x = 0.000, y = 84.445, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 9 },
	{ config_id = 422019, monster_id = 20010801, pos = { x = 613.900, y = 200.000, z = 147.009 }, rot = { x = 0.000, y = 77.204, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 422004, gadget_id = 70360005, pos = { x = 662.229, y = 200.428, z = 158.578 }, rot = { x = 356.466, y = 359.726, z = 8.881 }, level = 1, area_id = 9 },
	{ config_id = 422005, gadget_id = 70360025, pos = { x = 573.186, y = 206.086, z = 125.325 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 422006, gadget_id = 70350085, pos = { x = 573.160, y = 206.063, z = 125.277 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 422007, gadget_id = 70350085, pos = { x = 662.200, y = 200.922, z = 158.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 422016, gadget_id = 70220005, pos = { x = 588.201, y = 201.041, z = 127.695 }, rot = { x = 353.832, y = 0.480, z = 351.119 }, level = 1, area_id = 9 }
}

-- 区域
regions = {
	{ config_id = 422008, shape = RegionShape.SPHERE, radius = 3, pos = { x = 573.160, y = 206.063, z = 125.277 }, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1422008, name = "ENTER_REGION_422008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_422008", action = "action_EVENT_ENTER_REGION_422008", tag = "666", forbid_guest = false },
	{ config_id = 1422009, name = "CHALLENGE_SUCCESS_422009", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "888", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_422009", trigger_count = 0 },
	{ config_id = 1422010, name = "CHALLENGE_FAIL_422010", event = EventType.EVENT_CHALLENGE_FAIL, source = "888", condition = "", action = "action_EVENT_CHALLENGE_FAIL_422010", trigger_count = 0 },
	{ config_id = 1422011, name = "GADGET_STATE_CHANGE_422011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_422011", action = "action_EVENT_GADGET_STATE_CHANGE_422011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasFinished", value = 0, no_refresh = false }
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
		gadgets = { 422004, 422007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_422011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 422001, 422002, 422003, 422012, 422013, 422014, 422015, 422017, 422018, 422019 },
		gadgets = { 422005, 422006, 422016 },
		regions = { 422008 },
		triggers = { "ENTER_REGION_422008", "CHALLENGE_SUCCESS_422009", "CHALLENGE_FAIL_422010" },
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
function condition_EVENT_ENTER_REGION_422008(context, evt)
	if evt.param1 ~= 422008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_422008(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 422005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_422009(context, evt)
	-- 将本组内变量名为 "hasFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasFinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 422007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104422, 2)
	
	-- 将configid为 422004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 422004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133104422, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_422010(context, evt)
	-- 将configid为 422007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 422007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104422, 2)
	
	-- 将configid为 422004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 422004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "hasFinished" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasFinished", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_422011(context, evt)
	if 422004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_422011(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104422, 2)
	
	-- 将configid为 422007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 422007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建编号为888（该挑战的识别id),挑战内容为189的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 888, 189, 25, 4, 666, 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 将本组内变量名为 "hasFinished" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasFinished", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 133101096
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 96002, monster_id = 20011001, pos = { x = 1163.235, y = 297.449, z = 1375.214 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 6 },
	{ config_id = 96003, monster_id = 20011001, pos = { x = 1162.454, y = 297.361, z = 1375.264 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 6 },
	{ config_id = 96012, monster_id = 20010801, pos = { x = 1222.167, y = 283.744, z = 1325.667 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 6 },
	{ config_id = 96013, monster_id = 20011001, pos = { x = 1162.137, y = 297.479, z = 1376.370 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 6 },
	{ config_id = 96014, monster_id = 20010801, pos = { x = 1223.217, y = 283.937, z = 1325.266 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 6 },
	{ config_id = 96015, monster_id = 20011201, pos = { x = 1203.572, y = 280.026, z = 1337.150 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 6 },
	{ config_id = 96016, monster_id = 20010501, pos = { x = 1255.980, y = 282.898, z = 1320.213 }, rot = { x = 348.484, y = 359.868, z = 1.311 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 6 },
	{ config_id = 96017, monster_id = 20011201, pos = { x = 1204.780, y = 279.901, z = 1338.423 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 6 },
	{ config_id = 96018, monster_id = 20011001, pos = { x = 1163.170, y = 297.467, z = 1376.206 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 6 },
	{ config_id = 96019, monster_id = 20010501, pos = { x = 1256.019, y = 282.666, z = 1318.681 }, rot = { x = 348.484, y = 359.868, z = 1.311 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 96001, gadget_id = 70220035, pos = { x = 1255.098, y = 282.996, z = 1320.429 }, rot = { x = 283.779, y = 185.421, z = 174.836 }, level = 1, area_id = 6 },
	{ config_id = 96004, gadget_id = 70360005, pos = { x = 1158.280, y = 296.979, z = 1376.394 }, rot = { x = 355.060, y = 358.587, z = 3.553 }, level = 1, area_id = 6 },
	{ config_id = 96005, gadget_id = 70360025, pos = { x = 1259.102, y = 285.119, z = 1330.551 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 96006, gadget_id = 70350085, pos = { x = 1259.182, y = 285.164, z = 1330.712 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 96007, gadget_id = 70350085, pos = { x = 1158.271, y = 297.518, z = 1376.349 }, rot = { x = 0.866, y = 0.313, z = 359.982 }, level = 1, area_id = 6 },
	{ config_id = 96020, gadget_id = 70220035, pos = { x = 1254.468, y = 282.469, z = 1318.824 }, rot = { x = 351.581, y = 0.445, z = 13.964 }, level = 1, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 96008, shape = RegionShape.SPHERE, radius = 4, pos = { x = 1259.107, y = 285.230, z = 1331.091 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1096008, name = "ENTER_REGION_96008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_96008", action = "action_EVENT_ENTER_REGION_96008", tag = "666", forbid_guest = false },
	{ config_id = 1096009, name = "CHALLENGE_SUCCESS_96009", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "888", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_96009", trigger_count = 0 },
	{ config_id = 1096010, name = "CHALLENGE_FAIL_96010", event = EventType.EVENT_CHALLENGE_FAIL, source = "888", condition = "", action = "action_EVENT_CHALLENGE_FAIL_96010", trigger_count = 0 },
	{ config_id = 1096011, name = "GADGET_STATE_CHANGE_96011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_96011", action = "action_EVENT_GADGET_STATE_CHANGE_96011", trigger_count = 0 }
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
		gadgets = { 96004, 96007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_96011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 96002, 96003, 96012, 96013, 96014, 96015, 96016, 96017, 96018, 96019 },
		gadgets = { 96001, 96005, 96006, 96020 },
		regions = { 96008 },
		triggers = { "ENTER_REGION_96008", "CHALLENGE_SUCCESS_96009", "CHALLENGE_FAIL_96010" },
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
function condition_EVENT_ENTER_REGION_96008(context, evt)
	if evt.param1 ~= 96008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_96008(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 96005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_96009(context, evt)
	-- 将本组内变量名为 "hasFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasFinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 96007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101096, 2)
	
	-- 将configid为 96004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133101096, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_96010(context, evt)
	-- 将configid为 96007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133101096, 2)
	
	-- 将configid为 96004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96004, GadgetState.Default) then
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
function condition_EVENT_GADGET_STATE_CHANGE_96011(context, evt)
	if 96004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_96011(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101096, 2)
	
	-- 将configid为 96007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96007, GadgetState.GearStart) then
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
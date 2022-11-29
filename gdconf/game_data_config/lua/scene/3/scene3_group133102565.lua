-- 基础信息
local base_info = {
	group_id = 133102565
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 565001, monster_id = 20011001, pos = { x = 1572.356, y = 246.743, z = 280.724 }, rot = { x = 357.287, y = 271.995, z = 348.139 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 5 },
	{ config_id = 565002, monster_id = 20011001, pos = { x = 1574.651, y = 246.845, z = 280.974 }, rot = { x = 352.909, y = 247.225, z = 354.092 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 5 },
	{ config_id = 565003, monster_id = 20011001, pos = { x = 1573.523, y = 246.960, z = 279.176 }, rot = { x = 10.000, y = 234.034, z = 346.477 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 5 },
	{ config_id = 565012, monster_id = 20010801, pos = { x = 1598.420, y = 251.183, z = 267.577 }, rot = { x = 1.274, y = 296.787, z = 6.801 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 5 },
	{ config_id = 565013, monster_id = 20010801, pos = { x = 1599.416, y = 251.121, z = 270.248 }, rot = { x = 1.274, y = 296.782, z = 6.801 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 5 },
	{ config_id = 565015, monster_id = 20010501, pos = { x = 1621.546, y = 261.002, z = 251.385 }, rot = { x = 12.951, y = 315.362, z = 356.147 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 5 },
	{ config_id = 565016, monster_id = 20010501, pos = { x = 1619.824, y = 261.120, z = 252.193 }, rot = { x = 13.407, y = 325.122, z = 9.553 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 5 },
	{ config_id = 565017, monster_id = 20010801, pos = { x = 1597.956, y = 251.099, z = 269.485 }, rot = { x = 351.449, y = 32.677, z = 8.182 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 5 },
	{ config_id = 565018, monster_id = 20010501, pos = { x = 1619.273, y = 261.044, z = 250.012 }, rot = { x = 16.034, y = 331.187, z = 5.237 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 5 },
	{ config_id = 565020, monster_id = 20011201, pos = { x = 1609.097, y = 268.465, z = 237.797 }, rot = { x = 16.034, y = 34.581, z = 5.237 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 5 },
	{ config_id = 565021, monster_id = 20011201, pos = { x = 1606.288, y = 268.453, z = 239.341 }, rot = { x = 16.034, y = 34.581, z = 5.237 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 5 },
	{ config_id = 565022, monster_id = 20011201, pos = { x = 1608.348, y = 268.465, z = 240.680 }, rot = { x = 16.034, y = 34.581, z = 5.237 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 5 },
	{ config_id = 565023, monster_id = 20010901, pos = { x = 1600.375, y = 272.566, z = 231.744 }, rot = { x = 16.034, y = 34.581, z = 5.237 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1410 }, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 565004, gadget_id = 70360005, pos = { x = 1554.782, y = 246.946, z = 278.298 }, rot = { x = 3.866, y = 358.176, z = 359.285 }, level = 1, area_id = 5 },
	{ config_id = 565005, gadget_id = 70360025, pos = { x = 1597.775, y = 276.903, z = 220.934 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 565006, gadget_id = 70350085, pos = { x = 1597.775, y = 276.903, z = 220.934 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 565007, gadget_id = 70350085, pos = { x = 1554.803, y = 247.411, z = 278.352 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 565019, gadget_id = 70220005, pos = { x = 1601.134, y = 271.605, z = 229.418 }, rot = { x = 358.085, y = 0.821, z = 357.728 }, level = 1, area_id = 5 },
	{ config_id = 565024, gadget_id = 70220005, pos = { x = 1599.554, y = 272.001, z = 230.355 }, rot = { x = 358.445, y = 358.613, z = 62.698 }, level = 1, area_id = 5 }
}

-- 区域
regions = {
	{ config_id = 565008, shape = RegionShape.SPHERE, radius = 3, pos = { x = 1597.775, y = 276.903, z = 220.934 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1565008, name = "ENTER_REGION_565008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_565008", action = "action_EVENT_ENTER_REGION_565008", tag = "666", forbid_guest = false },
	{ config_id = 1565009, name = "CHALLENGE_SUCCESS_565009", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "888", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_565009", trigger_count = 0 },
	{ config_id = 1565010, name = "CHALLENGE_FAIL_565010", event = EventType.EVENT_CHALLENGE_FAIL, source = "888", condition = "", action = "action_EVENT_CHALLENGE_FAIL_565010", trigger_count = 0 },
	{ config_id = 1565011, name = "GADGET_STATE_CHANGE_565011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_565011", action = "action_EVENT_GADGET_STATE_CHANGE_565011", trigger_count = 0 }
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
		gadgets = { 565004, 565007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_565011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 565001, 565002, 565003, 565012, 565013, 565015, 565016, 565017, 565018, 565020, 565021, 565022, 565023 },
		gadgets = { 565005, 565006, 565019, 565024 },
		regions = { 565008 },
		triggers = { "ENTER_REGION_565008", "CHALLENGE_SUCCESS_565009", "CHALLENGE_FAIL_565010" },
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
function condition_EVENT_ENTER_REGION_565008(context, evt)
	if evt.param1 ~= 565008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_565008(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 565005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_565009(context, evt)
	-- 将本组内变量名为 "hasFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasFinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 565007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102565, 2)
	
	-- 将configid为 565004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 565004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133102565, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_565010(context, evt)
	-- 将configid为 565007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 565007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102565, 2)
	
	-- 将configid为 565004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 565004, GadgetState.Default) then
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
function condition_EVENT_GADGET_STATE_CHANGE_565011(context, evt)
	if 565004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_565011(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102565, 2)
	
	-- 将configid为 565007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 565007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建编号为888（该挑战的识别id),挑战内容为189的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 888, 189, 20, 4, 666, 5) then
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
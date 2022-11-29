-- 基础信息
local base_info = {
	group_id = 240045002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2011, monster_id = 23050101, pos = { x = 65.639, y = 76.940, z = -86.395 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007 } },
	{ config_id = 2014, monster_id = 23020101, pos = { x = 59.430, y = 76.859, z = -78.299 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, affix = { 1007 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2002, gadget_id = 70220071, pos = { x = 58.349, y = 76.940, z = -83.227 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 2003, gadget_id = 70220071, pos = { x = 58.349, y = 76.940, z = -78.287 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 2004, gadget_id = 70220070, pos = { x = 58.720, y = 76.940, z = -81.020 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2005, gadget_id = 70220071, pos = { x = 56.381, y = 76.956, z = -80.997 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2008, gadget_id = 70211021, pos = { x = 61.078, y = 77.010, z = -81.151 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_tag = "战斗高级稻妻", isOneoff = true, persistent = true },
	{ config_id = 2009, gadget_id = 70290137, pos = { x = 46.452, y = 77.263, z = -80.979 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2012, gadget_id = 70220071, pos = { x = 63.480, y = 76.940, z = -88.729 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 2013, gadget_id = 70220070, pos = { x = 63.372, y = 76.947, z = -83.227 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 2015, gadget_id = 70220070, pos = { x = 63.387, y = 76.940, z = -78.820 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 2016, gadget_id = 70220071, pos = { x = 63.288, y = 76.943, z = -81.026 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 2017, gadget_id = 70220070, pos = { x = 63.714, y = 76.940, z = -72.860 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 2001, shape = RegionShape.CUBIC, size = { x = 4.000, y = 10.000, z = 10.000 }, pos = { x = 49.883, y = 81.726, z = -80.882 } },
	{ config_id = 2010, shape = RegionShape.SPHERE, radius = 5, pos = { x = 34.780, y = 77.040, z = -81.498 } },
	{ config_id = 2020, shape = RegionShape.CUBIC, size = { x = 4.000, y = 10.000, z = 10.000 }, pos = { x = 49.883, y = 81.726, z = -80.882 } }
}

-- 触发器
triggers = {
	{ config_id = 1002001, name = "ENTER_REGION_2001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2001", action = "action_EVENT_ENTER_REGION_2001", trigger_count = 0 },
	{ config_id = 1002006, name = "ANY_MONSTER_LIVE_2006", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_2006", action = "action_EVENT_ANY_MONSTER_LIVE_2006", trigger_count = 0 },
	{ config_id = 1002007, name = "ANY_MONSTER_DIE_2007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2007", action = "" },
	{ config_id = 1002010, name = "ENTER_REGION_2010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2010", action = "action_EVENT_ENTER_REGION_2010", trigger_count = 0 },
	{ config_id = 1002018, name = "CHALLENGE_FAIL_2018", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL_2018" },
	{ config_id = 1002019, name = "CHALLENGE_SUCCESS_2019", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_2019" },
	{ config_id = 1002020, name = "ENTER_REGION_2020", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2020", action = "action_EVENT_ENTER_REGION_2020" }
}

-- 变量
variables = {
	{ config_id = 1, name = "alive1", value = 0, no_refresh = false }
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
		gadgets = { 2002, 2003, 2004, 2005, 2009, 2012, 2013, 2015, 2016, 2017 },
		regions = { 2001, 2010, 2020 },
		triggers = { "ENTER_REGION_2001", "ANY_MONSTER_LIVE_2006", "ENTER_REGION_2010", "CHALLENGE_FAIL_2018", "CHALLENGE_SUCCESS_2019", "ENTER_REGION_2020" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 2011, 2014 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 2008 },
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
function condition_EVENT_ENTER_REGION_2001(context, evt)
	if evt.param1 ~= 2001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2001(context, evt)
	-- 改变指定group组240045002中， configid为2009的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240045002, 2009, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_2006(context, evt)
	if 2011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_2006(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为1的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 1, 240045002, 2, 0, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 将本组内变量名为 "alive1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "alive1", 1, 240045002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2007(context, evt)
	-- 判断指定group组剩余怪物数量是否是1 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240045002) ~= 1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2010(context, evt)
	if evt.param1 ~= 2010 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	-- 判断变量"alive1"为1
	if ScriptLib.GetGroupVariableValue(context, "alive1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2010(context, evt)
	-- 改变指定group组240045002中， configid为2009的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240045002, 2009, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_2018(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240045002, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_2019(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240045002, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2020(context, evt)
	if evt.param1 ~= 2020 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2020(context, evt)
	-- 改变指定group组240045002中， configid为2009的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240045002, 2009, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 240045006, 7)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240045002, 2)
	
	return 0
end
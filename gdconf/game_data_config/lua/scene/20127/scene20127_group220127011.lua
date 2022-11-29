-- 基础信息
local base_info = {
	group_id = 220127011
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 11001, monster_id = 21020201, pos = { x = 60.826, y = 48.923, z = 79.841 }, rot = { x = 0.000, y = 251.496, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 11002, monster_id = 21010601, pos = { x = 62.406, y = 48.927, z = 85.466 }, rot = { x = 0.000, y = 256.393, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 11003, monster_id = 21010601, pos = { x = 63.453, y = 48.839, z = 76.678 }, rot = { x = 0.000, y = 300.461, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 11008, monster_id = 20011301, pos = { x = 64.324, y = 48.817, z = 75.719 }, rot = { x = 0.000, y = 287.595, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 11009, monster_id = 20011301, pos = { x = 63.196, y = 48.966, z = 83.348 }, rot = { x = 0.000, y = 218.940, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 11004, shape = RegionShape.SPHERE, radius = 12, pos = { x = 61.940, y = 48.935, z = 81.456 } },
	-- 判断玩家不在房间C
	{ config_id = 11011, shape = RegionShape.CUBIC, size = { x = 50.000, y = 20.000, z = 60.000 }, pos = { x = 19.444, y = 49.403, z = 106.428 } }
}

-- 触发器
triggers = {
	{ config_id = 1011004, name = "ENTER_REGION_11004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_11004", trigger_count = 0 },
	{ config_id = 1011005, name = "ANY_MONSTER_DIE_11005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_11005", action = "action_EVENT_ANY_MONSTER_DIE_11005" },
	{ config_id = 1011006, name = "VARIABLE_CHANGE_11006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_11006", action = "action_EVENT_VARIABLE_CHANGE_11006", trigger_count = 0 },
	{ config_id = 1011007, name = "VARIABLE_CHANGE_11007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_11007", action = "action_EVENT_VARIABLE_CHANGE_11007", trigger_count = 0 },
	{ config_id = 1011010, name = "ANY_MONSTER_DIE_11010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_11010", action = "action_EVENT_ANY_MONSTER_DIE_11010" },
	-- 判断玩家不在房间C
	{ config_id = 1011011, name = "ENTER_REGION_11011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_11011", action = "action_EVENT_ENTER_REGION_11011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gameState", value = 0, no_refresh = true },
	{ config_id = 2, name = "isClear", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 5,
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
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_11006", "VARIABLE_CHANGE_11007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 11004 },
		triggers = { "ENTER_REGION_11004" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 11001, 11002, 11003 },
		gadgets = { },
		regions = { 11011 },
		triggers = { "ANY_MONSTER_DIE_11010", "ENTER_REGION_11011" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 11008, 11009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_11005" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
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

-- 触发操作
function action_EVENT_ENTER_REGION_11004(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220127011, 3)
	    ScriptLib.RemoveExtraGroupSuite(context, 220127011, 2)
	ScriptLib.SetGroupVariableValue(context, "gameState", 2)
	
	-- 改变指定group组220127002中， configid为2068的gadget的state
	ScriptLib.SetGroupGadgetStateByConfigId(context, 220127002, 2068, 301)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_11005(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220127011) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_11005(context, evt)
	-- 改变指定group组220127002中， configid为2014的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220127002, 2014, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220127002中， configid为2068的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220127002, 2068, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 220127011, 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将本组内变量名为 "gameState" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameState", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "isClear" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isClear", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_11006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"gameState"为1
	if ScriptLib.GetGroupVariableValue(context, "gameState") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_11006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220127011, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_11007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"gameState"为0
	if ScriptLib.GetGroupVariableValue(context, "gameState") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_11007(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220127011, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_11010(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220127011) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_11010(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220127011, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_11011(context, evt)
	if evt.param1 ~= 11011 then return false end
	
	-- 判断变量"gameState"为2
	if ScriptLib.GetGroupVariableValue(context, "gameState") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_11011(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220127011, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220127011, 4)
	
	-- 改变指定group组220127002中， configid为2068的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220127002, 2068, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220127011, 1)
	
	-- 将本组内变量名为 "gameState" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameState", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end
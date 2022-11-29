-- 基础信息
local base_info = {
	group_id = 133309256
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 256005, monster_id = 24040301, pos = { x = -2509.956, y = -14.493, z = 5561.697 }, rot = { x = 0.000, y = 62.545, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, affix = { 5205 }, pose_id = 1004, area_id = 27 },
	{ config_id = 256006, monster_id = 24040301, pos = { x = -2513.673, y = -14.493, z = 5561.826 }, rot = { x = 0.000, y = 319.606, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, affix = { 5205 }, pose_id = 1004, area_id = 27 },
	{ config_id = 256007, monster_id = 24040301, pos = { x = -2509.968, y = -14.493, z = 5557.970 }, rot = { x = 0.000, y = 134.998, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, affix = { 5205 }, pose_id = 1004, area_id = 27 },
	{ config_id = 256008, monster_id = 24040301, pos = { x = -2513.531, y = -14.493, z = 5557.732 }, rot = { x = 0.000, y = 217.491, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, affix = { 5205 }, pose_id = 1004, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 256009, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2506.644, y = -14.316, z = 5562.672 }, area_id = 27 },
	{ config_id = 256010, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2514.226, y = -14.493, z = 5563.561 }, area_id = 27 },
	{ config_id = 256011, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2506.934, y = -14.662, z = 5555.380 }, area_id = 27 },
	{ config_id = 256012, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2514.751, y = -14.662, z = 5555.374 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1256001, name = "VARIABLE_CHANGE_256001", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_256001", action = "action_EVENT_VARIABLE_CHANGE_256001" },
	{ config_id = 1256002, name = "VARIABLE_CHANGE_256002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_256002", action = "action_EVENT_VARIABLE_CHANGE_256002" },
	{ config_id = 1256003, name = "VARIABLE_CHANGE_256003", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_256003", action = "action_EVENT_VARIABLE_CHANGE_256003" },
	{ config_id = 1256004, name = "VARIABLE_CHANGE_256004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_256004", action = "action_EVENT_VARIABLE_CHANGE_256004" },
	{ config_id = 1256009, name = "ENTER_REGION_256009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_256009", action = "action_EVENT_ENTER_REGION_256009", trigger_count = 0 },
	{ config_id = 1256010, name = "ENTER_REGION_256010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_256010", action = "action_EVENT_ENTER_REGION_256010", trigger_count = 0 },
	{ config_id = 1256011, name = "ENTER_REGION_256011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_256011", action = "action_EVENT_ENTER_REGION_256011", trigger_count = 0 },
	{ config_id = 1256012, name = "ENTER_REGION_256012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_256012", action = "action_EVENT_ENTER_REGION_256012", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "fight", value = 0, no_refresh = true }
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
		monsters = { 256005, 256006, 256007, 256008 },
		gadgets = { },
		regions = { 256009, 256010, 256011, 256012 },
		triggers = { "VARIABLE_CHANGE_256001", "VARIABLE_CHANGE_256002", "VARIABLE_CHANGE_256003", "VARIABLE_CHANGE_256004", "ENTER_REGION_256009", "ENTER_REGION_256010", "ENTER_REGION_256011", "ENTER_REGION_256012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_256001(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"fight"为1
	if ScriptLib.GetGroupVariableValue(context, "fight") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_256001(context, evt)
	-- 通知groupid为133309256中,configid为：256005的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 256005, 133309256) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_256002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"fight"为2
	if ScriptLib.GetGroupVariableValue(context, "fight") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_256002(context, evt)
	-- 通知groupid为133309256中,configid为：256006的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 256006, 133309256) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_256003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"fight"为3
	if ScriptLib.GetGroupVariableValue(context, "fight") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_256003(context, evt)
	-- 通知groupid为133309256中,configid为：256007的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 256007, 133309256) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_256004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"fight"为4
	if ScriptLib.GetGroupVariableValue(context, "fight") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_256004(context, evt)
	-- 通知groupid为133309256中,configid为：256008的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 256008, 133309256) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_256009(context, evt)
	if evt.param1 ~= 256009 then return false end
	
	-- 判断变量"fight"为1
	if ScriptLib.GetGroupVariableValue(context, "fight") < 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_256009(context, evt)
	-- 通知groupid为133309256中,configid为：256005的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 256005, 133309256) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_256010(context, evt)
	if evt.param1 ~= 256010 then return false end
	
	-- 判断变量"fight"为2
	if ScriptLib.GetGroupVariableValue(context, "fight") < 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_256010(context, evt)
	-- 通知groupid为133309256中,configid为：256006的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 256006, 133309256) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_256011(context, evt)
	if evt.param1 ~= 256011 then return false end
	
	-- 判断变量"fight"为3
	if ScriptLib.GetGroupVariableValue(context, "fight") < 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_256011(context, evt)
	-- 通知groupid为133309256中,configid为：256007的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 256007, 133309256) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_256012(context, evt)
	if evt.param1 ~= 256012 then return false end
	
	-- 判断变量"fight"为4
	if ScriptLib.GetGroupVariableValue(context, "fight") < 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_256012(context, evt)
	-- 通知groupid为133309256中,configid为：256008的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 256008, 133309256) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end
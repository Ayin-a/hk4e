-- 基础信息
local base_info = {
	group_id = 133213198
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 198002, gadget_id = 70220008, pos = { x = -3325.753, y = 233.082, z = -3250.157 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
	{ config_id = 198003, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3323.389, y = 232.128, z = -3252.982 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1198001, name = "VARIABLE_CHANGE_198001", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_198001", action = "action_EVENT_VARIABLE_CHANGE_198001" },
	{ config_id = 1198003, name = "ENTER_REGION_198003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_198003", action = "action_EVENT_ENTER_REGION_198003" }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = false }
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
function condition_EVENT_VARIABLE_CHANGE_198001(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为1
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_198001(context, evt)
	-- 通知场景上的所有玩家播放名字为321319801 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 321319801, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_198003(context, evt)
	if evt.param1 ~= 198003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_198003(context, evt)
	-- 将本组内变量名为 "count" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "count", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end
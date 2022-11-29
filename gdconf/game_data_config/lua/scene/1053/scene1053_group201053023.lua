-- 基础信息
local base_info = {
	group_id = 201053023
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
}

-- 区域
regions = {
	{ config_id = 23002, shape = RegionShape.SPHERE, radius = 8, pos = { x = -129.601, y = 34.288, z = 49.288 } },
	{ config_id = 23003, shape = RegionShape.SPHERE, radius = 8, pos = { x = -132.565, y = 37.217, z = 65.114 } }
}

-- 触发器
triggers = {
	{ config_id = 1023002, name = "ENTER_REGION_23002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_23002", action = "action_EVENT_ENTER_REGION_23002" },
	{ config_id = 1023003, name = "ENTER_REGION_23003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_23003", action = "action_EVENT_ENTER_REGION_23003" }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasEntered", value = 0, no_refresh = false }
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
		regions = { 23002, 23003 },
		triggers = { "ENTER_REGION_23002", "ENTER_REGION_23003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_23002(context, evt)
	if evt.param1 ~= 23002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"hasEntered"为1
	if ScriptLib.GetGroupVariableValue(context, "hasEntered") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_23002(context, evt)
	-- 将本组内变量名为 "hasEntered" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasEntered", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cause_dungeonfail")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_23003(context, evt)
	if evt.param1 ~= 23003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"hasEntered"为0
	if ScriptLib.GetGroupVariableValue(context, "hasEntered") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_23003(context, evt)
	-- 将本组内变量名为 "hasEntered" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasEntered", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end
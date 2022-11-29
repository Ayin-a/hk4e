-- 基础信息
local base_info = {
	group_id = 133003347
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1103, monster_id = 20010901, pos = { x = 2109.026, y = 228.900, z = -1443.967 }, rot = { x = 0.000, y = 291.689, z = 0.000 }, level = 5, drop_tag = "大史莱姆", area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3450, gadget_id = 70220010, pos = { x = 2107.307, y = 229.053, z = -1443.416 }, rot = { x = 0.000, y = 292.785, z = 0.000 }, level = 5, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 282, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2107.375, y = 229.187, z = -1443.711 }, area_id = 1 },
	{ config_id = 283, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2107.379, y = 229.032, z = -1443.205 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1000282, name = "ENTER_REGION_282", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_282", action = "action_EVENT_ENTER_REGION_282" },
	{ config_id = 1000283, name = "ENTER_REGION_283", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_283", action = "" },
	{ config_id = 1000412, name = "ANY_MONSTER_DIE_412", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_412", action = "action_EVENT_ANY_MONSTER_DIE_412" }
}

-- 变量
variables = {
	{ config_id = 1, name = "dead", value = 1, no_refresh = false }
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
		gadgets = { 3450 },
		regions = { 282, 283 },
		triggers = { "ENTER_REGION_282", "ENTER_REGION_283", "ANY_MONSTER_DIE_412" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
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
function condition_EVENT_ENTER_REGION_282(context, evt)
	if evt.param1 ~= 282 then return false end
	
	-- 判断变量"dead"为1
	if ScriptLib.GetGroupVariableValue(context, "dead") ~= 1 then
			return false
	end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_282(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1103, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 将本组内变量名为 "dead" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "dead", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_283(context, evt)
	if evt.param1 ~= 283 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_412(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"dead"为0
	if ScriptLib.GetGroupVariableValue(context, "dead") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_412(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133003447, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end
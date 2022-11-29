-- 基础信息
local base_info = {
	group_id = 133003111
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 524, monster_id = 20011001, pos = { x = 2227.289, y = 273.715, z = -1672.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 12, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 525, monster_id = 20010801, pos = { x = 2224.905, y = 274.245, z = -1660.162 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 12, drop_tag = "史莱姆", area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 86, shape = RegionShape.SPHERE, radius = 13.9, pos = { x = 2230.481, y = 269.518, z = -1663.394 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1000086, name = "ENTER_REGION_86", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_86", action = "action_EVENT_ENTER_REGION_86" }
}

-- 变量
variables = {
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
	rand_suite = true
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
		regions = { 86 },
		triggers = { "ENTER_REGION_86" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_86(context, evt)
	if evt.param1 ~= 86 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_86(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 525, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 524, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 133003010
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 191, monster_id = 20011201, pos = { x = 2540.749, y = 259.471, z = -1580.712 }, rot = { x = 0.000, y = 280.070, z = 0.000 }, level = 10, drop_tag = "史莱姆", ban_excel_drop = true, area_id = 1 },
	{ config_id = 192, monster_id = 20011201, pos = { x = 2547.464, y = 260.817, z = -1572.912 }, rot = { x = 0.000, y = 67.470, z = 0.000 }, level = 10, drop_tag = "史莱姆", ban_excel_drop = true, area_id = 1 },
	{ config_id = 193, monster_id = 20011201, pos = { x = 2547.391, y = 257.254, z = -1582.790 }, rot = { x = 0.000, y = 340.300, z = 0.000 }, level = 10, drop_tag = "史莱姆", ban_excel_drop = true, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 10, shape = RegionShape.SPHERE, radius = 12.9, pos = { x = 2543.251, y = 254.430, z = -1580.885 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1000010, name = "ENTER_REGION_10", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10", action = "action_EVENT_ENTER_REGION_10" }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { },
		regions = { 10 },
		triggers = { "ENTER_REGION_10" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_10(context, evt)
	if evt.param1 ~= 10 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 191, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 192, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 193, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end
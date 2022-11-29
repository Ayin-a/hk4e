-- 基础信息
local base_info = {
	group_id = 133001338
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 338001, monster_id = 20011201, pos = { x = 1985.141, y = 221.123, z = -1570.709 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 7, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 338002, monster_id = 20010601, pos = { x = 1986.628, y = 221.123, z = -1571.934 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 7, drop_tag = "大史莱姆", area_id = 1 },
	{ config_id = 338003, monster_id = 20010601, pos = { x = 1983.658, y = 221.123, z = -1571.842 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 7, drop_tag = "大史莱姆", area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 338004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1984.955, y = 220.983, z = -1572.224 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1338004, name = "ENTER_REGION_338004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_338004", action = "action_EVENT_ENTER_REGION_338004" }
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
		regions = { 338004 },
		triggers = { "ENTER_REGION_338004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_338004(context, evt)
	if evt.param1 ~= 338004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_338004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 338001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 338002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 338003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end
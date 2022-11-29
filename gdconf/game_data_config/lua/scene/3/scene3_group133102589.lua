-- 基础信息
local base_info = {
	group_id = 133102589
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 589002, monster_id = 20011301, pos = { x = 1484.410, y = 254.858, z = -140.647 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "大史莱姆", area_id = 5 },
	{ config_id = 589003, monster_id = 20011201, pos = { x = 1481.685, y = 254.459, z = -141.814 }, rot = { x = 0.000, y = 244.734, z = 0.000 }, level = 16, drop_tag = "史莱姆", area_id = 5 },
	{ config_id = 589004, monster_id = 20011201, pos = { x = 1483.191, y = 255.160, z = -138.013 }, rot = { x = 0.000, y = 167.253, z = 0.000 }, level = 16, drop_tag = "史莱姆", area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 589001, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1483.797, y = 254.822, z = -140.490 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1589001, name = "ENTER_REGION_589001", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_589001", action = "action_EVENT_ENTER_REGION_589001" }
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
		regions = { 589001 },
		triggers = { "ENTER_REGION_589001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_589001(context, evt)
	if evt.param1 ~= 589001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_589001(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 589002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 589003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 589004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end
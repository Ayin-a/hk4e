-- 基础信息
local base_info = {
	group_id = 133101110
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 110001, monster_id = 26060201, pos = { x = 1395.286, y = 228.569, z = 1248.510 }, rot = { x = 0.000, y = 187.716, z = 0.000 }, level = 22, drop_tag = "雷萤", area_id = 5 },
	{ config_id = 110002, monster_id = 26060201, pos = { x = 1395.652, y = 228.838, z = 1244.296 }, rot = { x = 0.000, y = 220.114, z = 0.000 }, level = 22, drop_tag = "雷萤", area_id = 5 },
	{ config_id = 110003, monster_id = 26060201, pos = { x = 1392.434, y = 228.284, z = 1245.297 }, rot = { x = 0.000, y = 211.878, z = 0.000 }, level = 22, drop_tag = "雷萤", area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 110004, shape = RegionShape.SPHERE, radius = 8, pos = { x = 1393.857, y = 227.264, z = 1245.277 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1110004, name = "ENTER_REGION_110004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_110004", action = "action_EVENT_ENTER_REGION_110004" }
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
		regions = { 110004 },
		triggers = { "ENTER_REGION_110004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_110004(context, evt)
	if evt.param1 ~= 110004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_110004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 110001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 110002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 110003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end
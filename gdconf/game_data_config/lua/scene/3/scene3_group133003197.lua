-- 基础信息
local base_info = {
	group_id = 133003197
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 780, monster_id = 20011201, pos = { x = 2298.908, y = 211.596, z = -1079.945 }, rot = { x = 0.000, y = 206.476, z = 0.000 }, level = 3, drop_tag = "史莱姆", disableWander = true, area_id = 1 },
	{ config_id = 781, monster_id = 20011201, pos = { x = 2303.234, y = 211.457, z = -1081.579 }, rot = { x = 0.000, y = 206.476, z = 0.000 }, level = 3, drop_tag = "史莱姆", disableWander = true, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3835, gadget_id = 70900018, pos = { x = 2302.766, y = 202.312, z = -1095.390 }, rot = { x = 334.388, y = 265.468, z = 0.000 }, level = 2, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 161, shape = RegionShape.SPHERE, radius = 3, pos = { x = 2302.248, y = 207.679, z = -1081.771 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1000161, name = "ENTER_REGION_161", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_161", action = "action_EVENT_ENTER_REGION_161" }
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
		gadgets = { 3835 },
		regions = { 161 },
		triggers = { "ENTER_REGION_161" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_161(context, evt)
	if evt.param1 ~= 161 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_161(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 780, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 781, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end
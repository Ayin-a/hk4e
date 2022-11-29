-- 基础信息
local base_info = {
	group_id = 133104365
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 365002, monster_id = 21010501, pos = { x = 519.577, y = 207.153, z = 797.036 }, rot = { x = 0.000, y = 120.425, z = 0.000 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 6 },
	{ config_id = 365003, monster_id = 21010501, pos = { x = 545.973, y = 217.585, z = 797.119 }, rot = { x = 0.000, y = 263.559, z = 0.000 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 6 },
	{ config_id = 365004, monster_id = 21010501, pos = { x = 545.070, y = 217.616, z = 799.429 }, rot = { x = 0.000, y = 245.386, z = 0.000 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 365001, shape = RegionShape.SPHERE, radius = 15, pos = { x = 531.682, y = 195.092, z = 793.466 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1365001, name = "ENTER_REGION_365001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_365001", action = "action_EVENT_ENTER_REGION_365001" }
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
		regions = { 365001 },
		triggers = { "ENTER_REGION_365001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_365001(context, evt)
	if evt.param1 ~= 365001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_365001(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 365002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 365003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 365004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 133108072
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 72001, monster_id = 20010801, pos = { x = -376.837, y = 200.044, z = -632.108 }, rot = { x = 0.000, y = 171.021, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 7 },
	{ config_id = 72002, monster_id = 20010801, pos = { x = -375.350, y = 200.044, z = -633.333 }, rot = { x = 0.000, y = 195.677, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 7 },
	{ config_id = 72003, monster_id = 20010801, pos = { x = -378.320, y = 200.044, z = -633.241 }, rot = { x = 0.000, y = 185.799, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 72004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -376.847, y = 200.044, z = -633.310 }, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1072004, name = "ENTER_REGION_72004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_72004", action = "action_EVENT_ENTER_REGION_72004" }
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
		regions = { 72004 },
		triggers = { "ENTER_REGION_72004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_72004(context, evt)
	if evt.param1 ~= 72004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_72004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 72001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 72002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 72003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end
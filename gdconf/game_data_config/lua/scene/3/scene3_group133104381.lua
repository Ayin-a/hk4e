-- 基础信息
local base_info = {
	group_id = 133104381
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 381001, monster_id = 20011001, pos = { x = 772.479, y = 200.914, z = 525.411 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 381002, monster_id = 20011001, pos = { x = 773.979, y = 201.248, z = 524.111 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 381003, monster_id = 20011001, pos = { x = 770.979, y = 200.800, z = 524.211 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "史莱姆", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 381004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 772.835, y = 200.425, z = 523.682 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1381004, name = "ENTER_REGION_381004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_381004", action = "action_EVENT_ENTER_REGION_381004" }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { },
		regions = { 381004 },
		triggers = { "ENTER_REGION_381004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_381004(context, evt)
	if evt.param1 ~= 381004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_381004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 381001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 381002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 381003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end
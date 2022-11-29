-- 基础信息
local base_info = {
	group_id = 133103374
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 374001, monster_id = 20011401, pos = { x = 90.766, y = 258.271, z = 955.740 }, rot = { x = 4.504, y = 258.981, z = 10.524 }, level = 19, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 374002, monster_id = 20011401, pos = { x = 94.236, y = 258.127, z = 952.485 }, rot = { x = 0.925, y = 333.073, z = 8.724 }, level = 19, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 374003, monster_id = 20011401, pos = { x = 88.679, y = 257.763, z = 953.447 }, rot = { x = 354.571, y = 72.194, z = 352.357 }, level = 19, drop_tag = "史莱姆", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 374004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 90.789, y = 258.029, z = 954.446 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1374004, name = "ENTER_REGION_374004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_374004", action = "action_EVENT_ENTER_REGION_374004" }
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
		regions = { 374004 },
		triggers = { "ENTER_REGION_374004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_374004(context, evt)
	if evt.param1 ~= 374004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_374004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 374001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 374002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 374003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end
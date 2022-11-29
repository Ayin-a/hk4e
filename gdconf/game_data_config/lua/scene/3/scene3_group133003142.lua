-- 基础信息
local base_info = {
	group_id = 133003142
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 581, monster_id = 20011401, pos = { x = 2232.160, y = 235.225, z = -1357.230 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 7, drop_tag = "史莱姆", disableWander = true, isElite = true, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 118, shape = RegionShape.SPHERE, radius = 10.6, pos = { x = 2232.556, y = 234.400, z = -1355.748 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1000118, name = "ENTER_REGION_118", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_118", action = "action_EVENT_ENTER_REGION_118" }
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
		regions = { 118 },
		triggers = { "ENTER_REGION_118" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_118(context, evt)
	if evt.param1 ~= 118 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_118(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 581, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end
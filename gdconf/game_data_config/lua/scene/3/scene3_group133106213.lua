-- 基础信息
local base_info = {
	group_id = 133106213
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 213001, monster_id = 20010401, pos = { x = -402.286, y = 210.628, z = 859.168 }, rot = { x = 0.000, y = 209.112, z = 0.000 }, level = 32, drop_tag = "大史莱姆", area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 213002, shape = RegionShape.SPHERE, radius = 8.2, pos = { x = -400.484, y = 204.722, z = 863.212 }, area_id = 8 }
}

-- 触发器
triggers = {
	{ config_id = 1213002, name = "ENTER_REGION_213002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_213002", action = "action_EVENT_ENTER_REGION_213002" }
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
		regions = { 213002 },
		triggers = { "ENTER_REGION_213002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_213002(context, evt)
	if evt.param1 ~= 213002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_213002(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 213001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end
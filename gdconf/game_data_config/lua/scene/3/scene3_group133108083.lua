-- 基础信息
local base_info = {
	group_id = 133108083
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 83001, monster_id = 25030201, pos = { x = -185.532, y = 220.810, z = -124.900 }, rot = { x = 0.000, y = 130.253, z = 0.000 }, level = 25, drop_tag = "盗宝团", pose_id = 9002, area_id = 7 },
	{ config_id = 83002, monster_id = 25010501, pos = { x = -186.284, y = 220.376, z = -129.505 }, rot = { x = 0.000, y = 253.485, z = 0.000 }, level = 25, drop_tag = "盗宝团", pose_id = 9003, area_id = 7 },
	{ config_id = 83003, monster_id = 20010401, pos = { x = -178.599, y = 248.592, z = -111.246 }, rot = { x = 0.000, y = 286.498, z = 0.000 }, level = 22, drop_tag = "大史莱姆", area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 83004, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -178.664, y = 248.603, z = -111.198 }, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1083004, name = "ENTER_REGION_83004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_83004", action = "action_EVENT_ENTER_REGION_83004" }
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
		monsters = { 83001, 83002 },
		gadgets = { },
		regions = { 83004 },
		triggers = { "ENTER_REGION_83004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_83004(context, evt)
	if evt.param1 ~= 83004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_83004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 83003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end
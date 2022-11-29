-- 基础信息
local base_info = {
	group_id = 133223463
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 463001, monster_id = 20010501, pos = { x = -5856.478, y = 226.688, z = -2479.520 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "史莱姆", climate_area_id = 7, area_id = 18 },
	{ config_id = 463002, monster_id = 20010501, pos = { x = -5855.403, y = 226.053, z = -2481.642 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "史莱姆", climate_area_id = 7, area_id = 18 },
	{ config_id = 463003, monster_id = 20010501, pos = { x = -5854.522, y = 226.532, z = -2478.279 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "史莱姆", climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 463004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -5856.481, y = 226.695, z = -2479.489 }, area_id = 18 }
}

-- 触发器
triggers = {
	{ config_id = 1463004, name = "ENTER_REGION_463004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_463004", action = "action_EVENT_ENTER_REGION_463004" }
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
		regions = { 463004 },
		triggers = { "ENTER_REGION_463004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_463004(context, evt)
	if evt.param1 ~= 463004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_463004(context, evt)
	-- 在0面前， 5 到 10 范围里，15 角度内，刷{463001,463002,463003}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {463001,463002,463003}, ranges = { 5, 10 }, angle = 15 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end
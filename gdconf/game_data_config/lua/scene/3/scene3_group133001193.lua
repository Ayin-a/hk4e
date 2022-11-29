-- 基础信息
local base_info = {
	group_id = 133001193
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 193001, monster_id = 20010301, pos = { x = 1483.780, y = 330.241, z = -1994.353 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "史莱姆", area_id = 2 },
	{ config_id = 193002, monster_id = 20010301, pos = { x = 1482.557, y = 330.182, z = -1994.433 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "史莱姆", area_id = 2 },
	{ config_id = 193003, monster_id = 20010301, pos = { x = 1483.234, y = 330.041, z = -1993.290 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "史莱姆", area_id = 2 },
	{ config_id = 193005, monster_id = 20010401, pos = { x = 1482.840, y = 330.220, z = -1992.604 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "大史莱姆", area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 193004, shape = RegionShape.SPHERE, radius = 15, pos = { x = 1483.230, y = 330.166, z = -1994.061 }, area_id = 2 }
}

-- 触发器
triggers = {
	{ config_id = 1193004, name = "ENTER_REGION_193004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_193004", action = "action_EVENT_ENTER_REGION_193004" }
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
		regions = { 193004 },
		triggers = { "ENTER_REGION_193004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_193004(context, evt)
	if evt.param1 ~= 193004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_193004(context, evt)
	-- 在0面前， 5 到 9 范围里，30 角度内，刷{193001,193002,193003,193005}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {193001,193002,193003,193005}, ranges = { 5, 9 }, angle = 30 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end
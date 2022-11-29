-- 基础信息
local base_info = {
	group_id = 133001145
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 145001, monster_id = 20010401, pos = { x = 1729.350, y = 213.944, z = -1355.874 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 3, drop_tag = "大史莱姆", area_id = 2 },
	{ config_id = 145002, monster_id = 20010301, pos = { x = 1728.127, y = 213.885, z = -1355.954 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 3, drop_tag = "史莱姆", area_id = 2 },
	{ config_id = 145003, monster_id = 20010301, pos = { x = 1728.805, y = 213.744, z = -1354.811 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 3, drop_tag = "史莱姆", area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 145004, shape = RegionShape.SPHERE, radius = 18, pos = { x = 1728.801, y = 213.870, z = -1355.582 }, area_id = 2 }
}

-- 触发器
triggers = {
	{ config_id = 1145004, name = "ENTER_REGION_145004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_145004", action = "action_EVENT_ENTER_REGION_145004" }
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
		regions = { 145004 },
		triggers = { "ENTER_REGION_145004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_145004(context, evt)
	if evt.param1 ~= 145004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_145004(context, evt)
	-- 在0面前， 5 到 10 范围里，15 角度内，刷{145001,145002,145003}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {145001,145002,145003}, ranges = { 5, 10 }, angle = 15 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end
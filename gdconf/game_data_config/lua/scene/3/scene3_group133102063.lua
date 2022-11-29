-- 基础信息
local base_info = {
	group_id = 133102063
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 96, monster_id = 20011201, pos = { x = 1613.332, y = 312.088, z = 410.372 }, rot = { x = 0.000, y = 220.845, z = 0.000 }, level = 21, drop_tag = "史莱姆", area_id = 5 },
	{ config_id = 97, monster_id = 20011201, pos = { x = 1614.610, y = 312.429, z = 409.907 }, rot = { x = 0.000, y = 242.466, z = 0.000 }, level = 21, drop_tag = "史莱姆", area_id = 5 },
	{ config_id = 98, monster_id = 20011301, pos = { x = 1614.510, y = 312.622, z = 411.091 }, rot = { x = 0.000, y = 225.039, z = 0.000 }, level = 21, drop_tag = "大史莱姆", area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 158, shape = RegionShape.SPHERE, radius = 3, pos = { x = 1614.231, y = 312.376, z = 410.298 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1000158, name = "ENTER_REGION_158", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_158", action = "action_EVENT_ENTER_REGION_158" }
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
		regions = { 158 },
		triggers = { "ENTER_REGION_158" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_158(context, evt)
	if evt.param1 ~= 158 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_158(context, evt)
	-- 在0面前， 5 到 8 范围里，20 角度内，刷{98,96,97}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {98,96,97}, ranges = { 5, 8 }, angle = 20 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end
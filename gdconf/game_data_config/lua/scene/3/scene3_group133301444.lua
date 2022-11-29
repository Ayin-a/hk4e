-- 基础信息
local base_info = {
	group_id = 133301444
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 444001, monster_id = 20010501, pos = { x = -410.079, y = 191.414, z = 3389.304 }, rot = { x = 0.000, y = 140.704, z = 0.000 }, level = 27, drop_tag = "史莱姆", disableWander = true, area_id = 22 },
	{ config_id = 444002, monster_id = 20010501, pos = { x = -395.116, y = 190.060, z = 3407.637 }, rot = { x = 0.000, y = 271.560, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 22 },
	{ config_id = 444003, monster_id = 20010701, pos = { x = -397.408, y = 190.060, z = 3410.485 }, rot = { x = 0.000, y = 211.246, z = 0.000 }, level = 27, drop_tag = "大史莱姆", area_id = 22 },
	{ config_id = 444012, monster_id = 20010501, pos = { x = -394.826, y = 190.060, z = 3415.835 }, rot = { x = 0.000, y = 271.560, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 22 },
	{ config_id = 444013, monster_id = 20010501, pos = { x = -390.994, y = 190.608, z = 3410.955 }, rot = { x = 0.000, y = 271.560, z = 0.000 }, level = 27, drop_tag = "史莱姆", disableWander = true, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 444005, gadget_id = 70330197, pos = { x = -404.152, y = 189.707, z = 3407.847 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 444006, gadget_id = 70330197, pos = { x = -391.008, y = 189.503, z = 3410.909 }, rot = { x = 0.000, y = 92.304, z = 0.000 }, level = 27, area_id = 22 }
}

-- 区域
regions = {
	{ config_id = 444004, shape = RegionShape.SPHERE, radius = 3, pos = { x = -391.380, y = 192.161, z = 3410.866 }, area_id = 22 }
}

-- 触发器
triggers = {
	{ config_id = 1444004, name = "ENTER_REGION_444004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_444004", action = "action_EVENT_ENTER_REGION_444004" }
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
		monsters = { 444001, 444003 },
		gadgets = { 444005, 444006 },
		regions = { 444004 },
		triggers = { "ENTER_REGION_444004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 444002, 444012, 444013 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_444004(context, evt)
	if evt.param1 ~= 444004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_444004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301444, 2)
	
	return 0
end
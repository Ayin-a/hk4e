-- 基础信息
local base_info = {
	group_id = 155005139
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 139001, monster_id = 20010101, pos = { x = 676.600, y = 244.971, z = 607.086 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "史莱姆", pose_id = 201, area_id = 200 },
	{ config_id = 139002, monster_id = 20010101, pos = { x = 679.348, y = 244.944, z = 606.857 }, rot = { x = 0.000, y = 338.417, z = 0.000 }, level = 36, drop_tag = "史莱姆", pose_id = 201, area_id = 200 },
	{ config_id = 139003, monster_id = 20010101, pos = { x = 674.586, y = 244.864, z = 605.332 }, rot = { x = 0.000, y = 11.097, z = 0.000 }, level = 36, drop_tag = "史莱姆", pose_id = 201, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 139004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 676.216, y = 245.340, z = 609.038 }, area_id = 200 }
}

-- 触发器
triggers = {
	{ config_id = 1139004, name = "ENTER_REGION_139004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_139004", action = "action_EVENT_ENTER_REGION_139004" }
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
		regions = { 139004 },
		triggers = { "ENTER_REGION_139004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 139001, 139002, 139003 },
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
function condition_EVENT_ENTER_REGION_139004(context, evt)
	if evt.param1 ~= 139004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_139004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 155005139, 2)
	
	return 0
end
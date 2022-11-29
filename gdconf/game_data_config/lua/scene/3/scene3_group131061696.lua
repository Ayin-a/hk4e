-- 基础信息
local base_info = {
	group_id = 131061696
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1696001, monster_id = 20010401, pos = { x = -847.236, y = 106.568, z = 1870.677 }, rot = { x = 0.000, y = 17.031, z = 0.000 }, level = 36, drop_tag = "大史莱姆", area_id = 19 },
	{ config_id = 1696002, monster_id = 20010301, pos = { x = -843.193, y = 106.095, z = 1871.083 }, rot = { x = 0.000, y = 341.374, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 19 },
	{ config_id = 1696003, monster_id = 20010301, pos = { x = -850.010, y = 105.090, z = 1873.850 }, rot = { x = 0.000, y = 64.053, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 1696004, shape = RegionShape.SPHERE, radius = 8, pos = { x = -846.776, y = 106.839, z = 1872.574 }, area_id = 19 }
}

-- 触发器
triggers = {
	{ config_id = 2696004, name = "ENTER_REGION_1696004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1696004", action = "action_EVENT_ENTER_REGION_1696004" }
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
		regions = { 1696004 },
		triggers = { "ENTER_REGION_1696004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 1696001, 1696002, 1696003 },
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
function condition_EVENT_ENTER_REGION_1696004(context, evt)
	if evt.param1 ~= 1696004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1696004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 131061696, 2)
	
	return 0
end
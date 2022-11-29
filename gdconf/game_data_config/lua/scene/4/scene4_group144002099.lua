-- 基础信息
local base_info = {
	group_id = 144002099
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 99001, monster_id = 20010801, pos = { x = 433.601, y = 120.000, z = -623.042 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "史莱姆", area_id = 101 },
	{ config_id = 99002, monster_id = 20010901, pos = { x = 436.000, y = 120.000, z = -626.008 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "大史莱姆", area_id = 101 },
	{ config_id = 99003, monster_id = 20010801, pos = { x = 431.901, y = 120.000, z = -629.332 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "史莱姆", area_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 99004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 434.503, y = 120.000, z = -625.985 }, area_id = 101 }
}

-- 触发器
triggers = {
	{ config_id = 1099004, name = "ENTER_REGION_99004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_99004", action = "action_EVENT_ENTER_REGION_99004" }
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
		regions = { 99004 },
		triggers = { "ENTER_REGION_99004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 99001, 99002, 99003 },
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
function condition_EVENT_ENTER_REGION_99004(context, evt)
	if evt.param1 ~= 99004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_99004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002099, 2)
	
	return 0
end
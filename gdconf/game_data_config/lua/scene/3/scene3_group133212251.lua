-- 基础信息
local base_info = {
	group_id = 133212251
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 251001, monster_id = 20011101, pos = { x = -3651.590, y = 243.585, z = -2288.772 }, rot = { x = 0.000, y = 48.203, z = 0.000 }, level = 27, drop_tag = "大史莱姆", area_id = 13 },
	{ config_id = 251002, monster_id = 20011001, pos = { x = -3651.511, y = 243.742, z = -2290.699 }, rot = { x = 0.000, y = 48.203, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 13 },
	{ config_id = 251003, monster_id = 20011001, pos = { x = -3653.422, y = 243.740, z = -2288.424 }, rot = { x = 0.000, y = 48.203, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 251004, shape = RegionShape.SPHERE, radius = 10, pos = { x = -3650.687, y = 243.961, z = -2290.478 }, area_id = 13 }
}

-- 触发器
triggers = {
	{ config_id = 1251004, name = "ENTER_REGION_251004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_251004", action = "action_EVENT_ENTER_REGION_251004" }
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
		regions = { 251004 },
		triggers = { "ENTER_REGION_251004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 251001, 251002, 251003 },
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
function condition_EVENT_ENTER_REGION_251004(context, evt)
	if evt.param1 ~= 251004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_251004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212251, 2)
	
	return 0
end
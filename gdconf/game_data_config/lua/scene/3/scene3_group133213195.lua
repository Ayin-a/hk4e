-- 基础信息
local base_info = {
	group_id = 133213195
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 195001, monster_id = 20011101, pos = { x = -3242.177, y = 200.009, z = -3623.204 }, rot = { x = 0.000, y = 54.331, z = 0.000 }, level = 25, drop_tag = "大史莱姆", area_id = 12 },
	{ config_id = 195002, monster_id = 20011101, pos = { x = -3238.914, y = 200.000, z = -3622.552 }, rot = { x = 0.000, y = 251.144, z = 0.000 }, level = 25, drop_tag = "大史莱姆", area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 195004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3240.411, y = 200.000, z = -3622.529 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1195004, name = "ENTER_REGION_195004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_195004", action = "action_EVENT_ENTER_REGION_195004" }
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
		regions = { 195004 },
		triggers = { "ENTER_REGION_195004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 195001, 195002 },
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
function condition_EVENT_ENTER_REGION_195004(context, evt)
	if evt.param1 ~= 195004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_195004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213195, 2)
	
	return 0
end
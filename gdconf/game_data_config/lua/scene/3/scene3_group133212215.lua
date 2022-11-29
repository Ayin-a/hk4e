-- 基础信息
local base_info = {
	group_id = 133212215
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 215002, monster_id = 26010301, pos = { x = -3613.571, y = 208.534, z = -2264.515 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "骗骗花", climate_area_id = 9, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 215003, gadget_id = 70210101, pos = { x = -3614.875, y = 208.815, z = -2264.508 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用稻妻", area_id = 13 }
}

-- 区域
regions = {
	{ config_id = 215001, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3612.323, y = 208.229, z = -2265.761 }, area_id = 13 }
}

-- 触发器
triggers = {
	{ config_id = 1215001, name = "ENTER_REGION_215001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_215001", action = "action_EVENT_ENTER_REGION_215001" }
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
		gadgets = { 215003 },
		regions = { 215001 },
		triggers = { "ENTER_REGION_215001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 215002 },
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
function condition_EVENT_ENTER_REGION_215001(context, evt)
	if evt.param1 ~= 215001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_215001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212215, 2)
	
	return 0
end
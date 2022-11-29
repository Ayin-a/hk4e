-- 基础信息
local base_info = {
	group_id = 133104662
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 662001, monster_id = 26010201, pos = { x = 291.930, y = 218.102, z = 907.362 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "骗骗花", disableWander = true, oneoff_reset_version = 2, area_id = 6 },
	{ config_id = 662003, monster_id = 26010201, pos = { x = 287.562, y = 219.414, z = 906.132 }, rot = { x = 0.000, y = 31.628, z = 0.000 }, level = 19, drop_tag = "骗骗花", disableWander = true, oneoff_reset_version = 2, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 662004, shape = RegionShape.SPHERE, radius = 8, pos = { x = 283.105, y = 220.752, z = 915.133 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1662004, name = "ENTER_REGION_662004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_662004", action = "action_EVENT_ENTER_REGION_662004" }
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
		regions = { 662004 },
		triggers = { "ENTER_REGION_662004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 662001, 662003 },
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
function condition_EVENT_ENTER_REGION_662004(context, evt)
	if evt.param1 ~= 662004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_662004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104662, 2)
	
	return 0
end
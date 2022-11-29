-- 基础信息
local base_info = {
	group_id = 133101048
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 48002, monster_id = 26010201, pos = { x = 1198.898, y = 254.808, z = 1235.262 }, rot = { x = 3.586, y = 359.882, z = 4.451 }, level = 17, drop_tag = "骗骗花", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 48001, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1200.544, y = 254.750, z = 1235.100 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1048001, name = "ENTER_REGION_48001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_48001", action = "action_EVENT_ENTER_REGION_48001" }
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
	end_suite = 2,
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
		regions = { 48001 },
		triggers = { "ENTER_REGION_48001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 48002 },
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
function condition_EVENT_ENTER_REGION_48001(context, evt)
	if evt.param1 ~= 48001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_48001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101048, 2)
	
	return 0
end
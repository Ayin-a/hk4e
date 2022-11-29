-- 基础信息
local base_info = {
	group_id = 133105284
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 284003, monster_id = 26010201, pos = { x = 264.485, y = 200.575, z = -5.202 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "骗骗花", area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 284004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 265.958, y = 200.575, z = -5.271 }, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1284004, name = "ENTER_REGION_284004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_284004", action = "action_EVENT_ENTER_REGION_284004" }
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
		regions = { 284004 },
		triggers = { "ENTER_REGION_284004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 284003 },
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
function condition_EVENT_ENTER_REGION_284004(context, evt)
	if evt.param1 ~= 284004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_284004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105284, 2)
	
	return 0
end
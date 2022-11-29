-- 基础信息
local base_info = {
	group_id = 133210283
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 283003, monster_id = 20010601, pos = { x = -3819.543, y = 113.188, z = -836.111 }, rot = { x = 0.000, y = 212.447, z = 0.000 }, level = 32, drop_tag = "大史莱姆", area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 283004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3819.906, y = 112.824, z = -838.259 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1283004, name = "ENTER_REGION_283004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_283004", action = "action_EVENT_ENTER_REGION_283004" }
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
		regions = { 283004 },
		triggers = { "ENTER_REGION_283004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 283003 },
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
function condition_EVENT_ENTER_REGION_283004(context, evt)
	if evt.param1 ~= 283004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_283004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210283, 2)
	
	return 0
end
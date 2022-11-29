-- 基础信息
local base_info = {
	group_id = 133002357
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 357001, monster_id = 20011501, pos = { x = 2069.695, y = 203.702, z = -729.120 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "大史莱姆", area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 357004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2072.281, y = 202.456, z = -731.851 }, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1357004, name = "ENTER_REGION_357004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_357004", action = "action_EVENT_ENTER_REGION_357004" }
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
		regions = { 357004 },
		triggers = { "ENTER_REGION_357004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 357001 },
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
function condition_EVENT_ENTER_REGION_357004(context, evt)
	if evt.param1 ~= 357004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_357004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002357, 2)
	
	return 0
end
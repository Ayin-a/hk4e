-- 基础信息
local base_info = {
	group_id = 133220252
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 252001, monster_id = 20011101, pos = { x = -2474.087, y = 200.000, z = -4090.427 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "大史莱姆", area_id = 11 },
	{ config_id = 252002, monster_id = 20011101, pos = { x = -2473.972, y = 200.089, z = -4093.234 }, rot = { x = 0.000, y = 208.784, z = 0.000 }, level = 27, drop_tag = "大史莱姆", area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 252004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2474.097, y = 200.000, z = -4091.629 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1252004, name = "ENTER_REGION_252004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_252004", action = "action_EVENT_ENTER_REGION_252004" }
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
		regions = { 252004 },
		triggers = { "ENTER_REGION_252004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 252001, 252002 },
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
function condition_EVENT_ENTER_REGION_252004(context, evt)
	if evt.param1 ~= 252004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_252004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220252, 2)
	
	return 0
end
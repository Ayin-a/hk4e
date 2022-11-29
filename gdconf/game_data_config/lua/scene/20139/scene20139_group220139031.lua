-- 基础信息
local base_info = {
	group_id = 220139031
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 31001, monster_id = 20011201, pos = { x = -125.127, y = 85.865, z = -83.452 }, rot = { x = 0.000, y = 266.531, z = 0.000 }, level = 1 },
	{ config_id = 31002, monster_id = 20011201, pos = { x = -123.640, y = 85.865, z = -84.677 }, rot = { x = 0.000, y = 266.531, z = 0.000 }, level = 1 },
	{ config_id = 31003, monster_id = 20011201, pos = { x = -126.610, y = 85.865, z = -84.585 }, rot = { x = 0.000, y = 266.531, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 31005, gadget_id = 70211001, pos = { x = -134.275, y = 83.028, z = -84.160 }, rot = { x = 350.657, y = 92.780, z = 0.000 }, level = 16, drop_tag = "战斗低级群岛", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 31004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -129.716, y = 83.826, z = -84.005 } }
}

-- 触发器
triggers = {
	{ config_id = 1031004, name = "ENTER_REGION_31004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_31004", action = "action_EVENT_ENTER_REGION_31004" }
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
		gadgets = { 31005 },
		regions = { 31004 },
		triggers = { "ENTER_REGION_31004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 31001, 31002, 31003 },
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
function condition_EVENT_ENTER_REGION_31004(context, evt)
	if evt.param1 ~= 31004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_31004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220139031, 2)
	
	return 0
end
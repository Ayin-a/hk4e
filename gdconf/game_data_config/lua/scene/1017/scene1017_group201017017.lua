-- 基础信息
local base_info = {
	group_id = 201017017
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 17001, gadget_id = 70211011, pos = { x = -41.940, y = 60.282, z = 164.408 }, rot = { x = 0.000, y = 190.287, z = 0.000 }, level = 11, drop_tag = "战斗中级璃月", isOneoff = true, persistent = true },
	{ config_id = 17003, gadget_id = 70690008, pos = { x = -51.921, y = 43.855, z = 144.707 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 17002, shape = RegionShape.SPHERE, radius = 8, pos = { x = -46.512, y = 60.235, z = 167.070 } }
}

-- 触发器
triggers = {
	{ config_id = 1017002, name = "ENTER_REGION_17002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_17002", action = "action_EVENT_ENTER_REGION_17002" }
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
		gadgets = { 17001 },
		regions = { 17002 },
		triggers = { "ENTER_REGION_17002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 17003 },
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
function condition_EVENT_ENTER_REGION_17002(context, evt)
	if evt.param1 ~= 17002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_17002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201017017, 2)
	
	return 0
end
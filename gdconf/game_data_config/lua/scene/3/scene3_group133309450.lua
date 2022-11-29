-- 基础信息
local base_info = {
	group_id = 133309450
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 450002, monster_id = 28060401, pos = { x = -2341.474, y = -54.716, z = 5738.916 }, rot = { x = 0.000, y = 353.298, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 27 },
	{ config_id = 450003, monster_id = 28060401, pos = { x = -2343.254, y = -54.421, z = 5743.748 }, rot = { x = 0.000, y = 79.568, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 450004, shape = RegionShape.SPHERE, radius = 7, pos = { x = -2340.136, y = -54.120, z = 5742.561 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1450004, name = "ENTER_REGION_450004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_450004", action = "action_EVENT_ENTER_REGION_450004" }
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
		regions = { 450004 },
		triggers = { "ENTER_REGION_450004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 450002, 450003 },
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
function condition_EVENT_ENTER_REGION_450004(context, evt)
	if evt.param1 ~= 450004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_450004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309450, 2)
	
	return 0
end
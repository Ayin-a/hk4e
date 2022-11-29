-- 基础信息
local base_info = {
	group_id = 133304534
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 534001, monster_id = 24020401, pos = { x = -1564.461, y = 220.941, z = 2443.052 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 100, area_id = 21 },
	{ config_id = 534002, monster_id = 24020101, pos = { x = -1571.137, y = 219.909, z = 2433.055 }, rot = { x = 0.000, y = 62.408, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 100, area_id = 21 },
	{ config_id = 534003, monster_id = 24020401, pos = { x = -1556.933, y = 219.621, z = 2432.734 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 100, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 534004, shape = RegionShape.SPHERE, radius = 12, pos = { x = -1566.600, y = 220.565, z = 2435.347 }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1534004, name = "ENTER_REGION_534004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_534004", action = "action_EVENT_ENTER_REGION_534004" }
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
		regions = { 534004 },
		triggers = { "ENTER_REGION_534004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 534001, 534002, 534003 },
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
function condition_EVENT_ENTER_REGION_534004(context, evt)
	if evt.param1 ~= 534004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_534004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304534, 2)
	
	return 0
end
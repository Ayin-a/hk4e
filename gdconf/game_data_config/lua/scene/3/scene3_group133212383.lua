-- 基础信息
local base_info = {
	group_id = 133212383
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 383005, monster_id = 21010701, pos = { x = -3521.993, y = 200.366, z = -2577.682 }, rot = { x = 0.000, y = 154.881, z = 0.000 }, level = 27, drop_tag = "丘丘人", area_id = 13 },
	{ config_id = 383006, monster_id = 21010701, pos = { x = -3528.640, y = 200.154, z = -2588.435 }, rot = { x = 0.000, y = 39.263, z = 0.000 }, level = 27, drop_tag = "丘丘人", area_id = 13 },
	{ config_id = 383007, monster_id = 21010701, pos = { x = -3516.856, y = 200.000, z = -2586.570 }, rot = { x = 0.000, y = 312.340, z = 0.000 }, level = 27, drop_tag = "丘丘人", area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 383001, gadget_id = 70220014, pos = { x = -3522.068, y = 199.975, z = -2583.313 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 383002, gadget_id = 70220014, pos = { x = -3521.760, y = 199.435, z = -2585.133 }, rot = { x = 27.410, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 383003, gadget_id = 70220013, pos = { x = -3523.785, y = 199.376, z = -2583.960 }, rot = { x = 332.110, y = 330.582, z = 0.000 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1383004, name = "ANY_GADGET_DIE_383004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_383004", action = "action_EVENT_ANY_GADGET_DIE_383004" }
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
		gadgets = { 383001, 383002, 383003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_383004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 383005, 383006, 383007 },
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
function condition_EVENT_ANY_GADGET_DIE_383004(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133212383}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_383004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212383, 2)
	
	return 0
end
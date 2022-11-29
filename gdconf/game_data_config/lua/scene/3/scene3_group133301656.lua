-- 基础信息
local base_info = {
	group_id = 133301656
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 656001, monster_id = 26120101, pos = { x = -963.632, y = 266.204, z = 3407.027 }, rot = { x = 0.000, y = 253.862, z = 0.000 }, level = 30, drop_tag = "大蕈兽", pose_id = 201, area_id = 23 },
	{ config_id = 656006, monster_id = 26090201, pos = { x = -965.310, y = 267.287, z = 3411.992 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 656007, monster_id = 26090201, pos = { x = -965.742, y = 265.667, z = 3401.727 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 656002, gadget_id = 70220109, pos = { x = -962.227, y = 268.202, z = 3415.840 }, rot = { x = 352.668, y = 307.128, z = 6.685 }, level = 30, area_id = 23 },
	{ config_id = 656003, gadget_id = 70220109, pos = { x = -950.698, y = 268.553, z = 3401.210 }, rot = { x = 356.853, y = 0.118, z = 355.715 }, level = 30, area_id = 23 },
	{ config_id = 656004, gadget_id = 70220109, pos = { x = -970.015, y = 265.370, z = 3399.160 }, rot = { x = 357.425, y = 357.719, z = 2.786 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1656005, name = "ANY_GADGET_DIE_656005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_656005", action = "action_EVENT_ANY_GADGET_DIE_656005" }
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
		gadgets = { 656002, 656003, 656004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_656005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 656001, 656006, 656007 },
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
function condition_EVENT_ANY_GADGET_DIE_656005(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133301656}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_656005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301656, 2)
	
	return 0
end
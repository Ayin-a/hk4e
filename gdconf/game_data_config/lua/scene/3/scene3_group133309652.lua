-- 基础信息
local base_info = {
	group_id = 133309652
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 652004, monster_id = 26090101, pos = { x = -2354.922, y = -63.108, z = 5700.162 }, rot = { x = 0.000, y = 7.976, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 652001, gadget_id = 70330428, pos = { x = -2354.713, y = -63.294, z = 5700.154 }, rot = { x = 0.000, y = 7.976, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 652002, gadget_id = 70330429, pos = { x = -2354.256, y = -63.324, z = 5700.461 }, rot = { x = 317.405, y = 284.528, z = 71.270 }, level = 32, area_id = 27 },
	{ config_id = 652005, gadget_id = 70210101, pos = { x = -2355.321, y = -63.600, z = 5699.605 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1652003, name = "ANY_GADGET_DIE_652003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_652003", action = "action_EVENT_ANY_GADGET_DIE_652003" }
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
		gadgets = { 652001, 652002, 652005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_652003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 652004 },
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
function condition_EVENT_ANY_GADGET_DIE_652003(context, evt)
	if 652001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_652003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309652, 2)
	
	return 0
end
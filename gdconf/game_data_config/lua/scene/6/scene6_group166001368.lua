-- 基础信息
local base_info = {
	group_id = 166001368
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
	{ config_id = 368001, gadget_id = 70290212, pos = { x = 1035.095, y = 737.950, z = 423.874 }, rot = { x = 0.000, y = 128.123, z = 0.000 }, level = 36, state = GadgetState.GearStart, persistent = true, interact_id = 87, area_id = 300 },
	{ config_id = 368002, gadget_id = 70290218, pos = { x = 1049.516, y = 737.832, z = 434.370 }, rot = { x = 0.000, y = 52.307, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 300 },
	{ config_id = 368003, gadget_id = 70290218, pos = { x = 1034.876, y = 739.029, z = 412.334 }, rot = { x = 0.000, y = 359.492, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 300 },
	{ config_id = 368004, gadget_id = 70290218, pos = { x = 1025.212, y = 738.281, z = 435.222 }, rot = { x = 343.561, y = 279.915, z = 357.168 }, level = 36, state = GadgetState.GearStart, area_id = 300 },
	{ config_id = 368005, gadget_id = 70211111, pos = { x = 1030.130, y = 738.051, z = 422.924 }, rot = { x = 0.000, y = 75.196, z = 0.000 }, level = 26, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1368006, name = "ANY_GADGET_DIE_368006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_368006", action = "action_EVENT_ANY_GADGET_DIE_368006" }
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
		gadgets = { 368001, 368002, 368003, 368004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_368006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 368005 },
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
function condition_EVENT_ANY_GADGET_DIE_368006(context, evt)
	-- 判断指定group组剩余gadget数量是否是1 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 166001368}) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_368006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001368, 2)
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 133304359
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 359002, monster_id = 25310101, pos = { x = -1869.522, y = 261.823, z = 2771.128 }, rot = { x = 0.000, y = 146.010, z = 0.000 }, level = 30, drop_tag = "中级镀金旅团", pose_id = 1, area_id = 21 },
	{ config_id = 359003, monster_id = 25310201, pos = { x = -1872.075, y = 261.774, z = 2777.171 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "中级镀金旅团", pose_id = 1, area_id = 21 },
	{ config_id = 359004, monster_id = 25310301, pos = { x = -1871.654, y = 262.616, z = 2761.324 }, rot = { x = 0.000, y = 177.296, z = 0.000 }, level = 30, drop_tag = "中级镀金旅团", disableWander = true, area_id = 21 },
	{ config_id = 359005, monster_id = 25210402, pos = { x = -1870.604, y = 262.026, z = 2767.786 }, rot = { x = 0.000, y = 30.835, z = 0.000 }, level = 30, drop_tag = "镀金旅团", area_id = 21 },
	{ config_id = 359006, monster_id = 25210302, pos = { x = -1874.110, y = 261.623, z = 2779.951 }, rot = { x = 0.000, y = 138.537, z = 0.000 }, level = 30, drop_tag = "镀金旅团", area_id = 21 },
	{ config_id = 359007, monster_id = 25210201, pos = { x = -1875.379, y = 259.653, z = 2798.643 }, rot = { x = 0.000, y = 323.694, z = 0.000 }, level = 30, drop_tag = "镀金旅团", pose_id = 9006, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 359001, gadget_id = 70211151, pos = { x = -1872.749, y = 262.203, z = 2766.563 }, rot = { x = 0.171, y = 113.146, z = 3.474 }, level = 26, chest_drop_id = 21910049, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1359008, name = "ANY_MONSTER_DIE_359008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_359008", action = "action_EVENT_ANY_MONSTER_DIE_359008" },
	{ config_id = 1359009, name = "ANY_MONSTER_DIE_359009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_359009", action = "action_EVENT_ANY_MONSTER_DIE_359009", trigger_count = 0 }
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
		monsters = { 359004, 359005, 359006, 359007 },
		gadgets = { 359001 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_359008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 359002, 359003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_359009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_359008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_359008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304359, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_359009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_359009(context, evt)
	-- 将configid为 359001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 359001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
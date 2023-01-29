-- 基础信息
local base_info = {
	group_id = 133308713
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 713001, monster_id = 25210201, pos = { x = -1244.600, y = 80.426, z = 5013.690 }, rot = { x = 0.000, y = 194.345, z = 0.000 }, level = 32, drop_tag = "镀金旅团", area_id = 32 },
	{ config_id = 713002, monster_id = 25210202, pos = { x = -1240.942, y = 80.378, z = 5011.988 }, rot = { x = 0.000, y = 210.612, z = 0.000 }, level = 32, drop_tag = "镀金旅团", area_id = 32 },
	{ config_id = 713003, monster_id = 25210203, pos = { x = -1250.854, y = 76.448, z = 5012.810 }, rot = { x = 0.000, y = 266.999, z = 0.000 }, level = 32, drop_tag = "镀金旅团", area_id = 32 },
	{ config_id = 713004, monster_id = 25410102, pos = { x = -1242.141, y = 80.424, z = 5013.807 }, rot = { x = 0.000, y = 202.866, z = 0.000 }, level = 32, drop_tag = "高级镀金旅团", area_id = 32 },
	{ config_id = 713006, monster_id = 25310101, pos = { x = -1231.074, y = 84.436, z = 5008.134 }, rot = { x = 0.000, y = 290.459, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", pose_id = 1, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 713005, gadget_id = 70211002, pos = { x = -1226.922, y = 84.404, z = 5006.624 }, rot = { x = 0.000, y = 110.789, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1713007, name = "ANY_MONSTER_DIE_713007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_713007", action = "action_EVENT_ANY_MONSTER_DIE_713007" },
	{ config_id = 1713008, name = "ANY_MONSTER_DIE_713008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_713008", action = "action_EVENT_ANY_MONSTER_DIE_713008" }
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
		monsters = { 713001, 713002, 713003 },
		gadgets = { 713005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_713007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 713004, 713006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_713008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_713007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_713007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308713, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_713008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_713008(context, evt)
	-- 将configid为 713005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 713005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
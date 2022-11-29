-- 基础信息
local base_info = {
	group_id = 155005210
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 210002, monster_id = 22010101, pos = { x = 425.912, y = 214.850, z = 311.202 }, rot = { x = 0.000, y = 25.707, z = 0.000 }, level = 36, drop_tag = "深渊法师", disableWander = true, area_id = 200 },
	{ config_id = 210003, monster_id = 21010301, pos = { x = 423.183, y = 214.096, z = 315.069 }, rot = { x = 0.000, y = 289.503, z = 0.000 }, level = 36, drop_tag = "丘丘人", pose_id = 9016, area_id = 200 },
	{ config_id = 210004, monster_id = 21010201, pos = { x = 430.865, y = 212.635, z = 314.207 }, rot = { x = 14.573, y = 52.037, z = 10.722 }, level = 36, drop_tag = "丘丘人", pose_id = 9016, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 210001, gadget_id = 70220013, pos = { x = 433.539, y = 215.121, z = 307.988 }, rot = { x = 14.061, y = 315.529, z = 346.586 }, level = 36, area_id = 200 },
	{ config_id = 210005, gadget_id = 70310001, pos = { x = 433.321, y = 212.127, z = 314.001 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 210007, gadget_id = 70211002, pos = { x = 423.210, y = 214.250, z = 317.879 }, rot = { x = 15.962, y = 76.018, z = 347.093 }, level = 16, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 210008, gadget_id = 70220013, pos = { x = 431.708, y = 215.502, z = 306.663 }, rot = { x = 16.789, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 210009, gadget_id = 70310001, pos = { x = 422.086, y = 215.102, z = 312.120 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1210006, name = "ANY_MONSTER_DIE_210006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_210006", action = "action_EVENT_ANY_MONSTER_DIE_210006" }
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
		monsters = { 210002, 210003, 210004 },
		gadgets = { 210001, 210005, 210007, 210008, 210009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_210006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_210006(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 155005210) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_210006(context, evt)
	-- 将configid为 210007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 210007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
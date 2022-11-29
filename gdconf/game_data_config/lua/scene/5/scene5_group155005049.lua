-- 基础信息
local base_info = {
	group_id = 155005049
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 49001, monster_id = 21010201, pos = { x = 490.821, y = 146.879, z = 920.187 }, rot = { x = 0.000, y = 72.299, z = 0.000 }, level = 36, drop_tag = "丘丘人", pose_id = 9012, area_id = 200 },
	{ config_id = 49004, monster_id = 21020201, pos = { x = 489.838, y = 146.223, z = 925.792 }, rot = { x = 0.000, y = 205.888, z = 0.000 }, level = 36, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 200 },
	{ config_id = 49005, monster_id = 21010701, pos = { x = 494.994, y = 149.592, z = 909.834 }, rot = { x = 0.000, y = 310.381, z = 0.000 }, level = 36, drop_tag = "丘丘人", area_id = 200 },
	{ config_id = 49006, monster_id = 21010201, pos = { x = 490.651, y = 146.716, z = 921.945 }, rot = { x = 0.000, y = 90.697, z = 0.000 }, level = 36, drop_tag = "丘丘人", pose_id = 9012, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 49002, gadget_id = 70211002, pos = { x = 492.790, y = 147.628, z = 925.638 }, rot = { x = 13.675, y = 255.167, z = 355.076 }, level = 16, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 49007, gadget_id = 70220013, pos = { x = 488.602, y = 145.915, z = 928.849 }, rot = { x = 358.028, y = 357.605, z = 16.616 }, level = 36, area_id = 200 },
	{ config_id = 49008, gadget_id = 70220013, pos = { x = 491.179, y = 146.618, z = 927.728 }, rot = { x = 351.949, y = 26.961, z = 13.561 }, level = 36, area_id = 200 },
	{ config_id = 49009, gadget_id = 70300086, pos = { x = 495.202, y = 146.417, z = 930.843 }, rot = { x = 351.572, y = 344.400, z = 27.319 }, level = 36, area_id = 200 },
	{ config_id = 49010, gadget_id = 70310004, pos = { x = 490.134, y = 146.453, z = 923.257 }, rot = { x = 4.265, y = 0.651, z = 17.355 }, level = 36, state = GadgetState.GearStart, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1049003, name = "ANY_MONSTER_DIE_49003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_49003", action = "action_EVENT_ANY_MONSTER_DIE_49003" }
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
		monsters = { 49001, 49004, 49005, 49006 },
		gadgets = { 49002, 49007, 49008, 49009, 49010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_49003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_49003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_49003(context, evt)
	-- 将configid为 49002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 49002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end
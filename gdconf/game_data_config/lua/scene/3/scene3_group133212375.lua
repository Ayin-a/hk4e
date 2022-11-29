-- 基础信息
local base_info = {
	group_id = 133212375
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 375001, monster_id = 25030201, pos = { x = -3887.432, y = 256.125, z = -2483.880 }, rot = { x = 0.354, y = 157.272, z = 0.409 }, level = 27, drop_tag = "盗宝团", disableWander = true, affix = { 1101 }, pose_id = 9003, area_id = 13 },
	{ config_id = 375004, monster_id = 25030201, pos = { x = -3888.048, y = 255.750, z = -2489.197 }, rot = { x = 0.000, y = 18.102, z = 0.000 }, level = 27, drop_tag = "盗宝团", disableWander = true, affix = { 1101 }, pose_id = 9009, area_id = 13 },
	{ config_id = 375005, monster_id = 25010301, pos = { x = -3901.062, y = 256.869, z = -2487.772 }, rot = { x = 0.000, y = 20.535, z = 0.000 }, level = 27, drop_tag = "盗宝团", pose_id = 9004, area_id = 13 },
	{ config_id = 375006, monster_id = 25010501, pos = { x = -3901.140, y = 256.839, z = -2483.416 }, rot = { x = 0.000, y = 160.194, z = 0.000 }, level = 27, drop_tag = "盗宝团", pose_id = 9005, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 375002, gadget_id = 70211002, pos = { x = -3901.571, y = 258.620, z = -2480.004 }, rot = { x = 0.000, y = 106.370, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 },
	{ config_id = 375007, gadget_id = 70310006, pos = { x = -3901.981, y = 256.707, z = -2485.395 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 375008, gadget_id = 70900393, pos = { x = -3907.304, y = 257.419, z = -2496.609 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 13 },
	{ config_id = 375009, gadget_id = 70900393, pos = { x = -3884.831, y = 256.445, z = -2483.072 }, rot = { x = 0.000, y = 57.735, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1375003, name = "ANY_MONSTER_DIE_375003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_375003", action = "action_EVENT_ANY_MONSTER_DIE_375003" }
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
		monsters = { 375001, 375004, 375005, 375006 },
		gadgets = { 375002, 375007, 375008, 375009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_375003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_375003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_375003(context, evt)
	-- 将configid为 375002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 375002, GadgetState.Default) then
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
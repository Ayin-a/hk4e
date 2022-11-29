-- 基础信息
local base_info = {
	group_id = 133105150
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 248, monster_id = 21010301, pos = { x = 430.830, y = 207.439, z = -32.409 }, rot = { x = 0.000, y = 203.318, z = 0.000 }, level = 19, drop_tag = "丘丘人", disableWander = true, area_id = 9 },
	{ config_id = 249, monster_id = 21010501, pos = { x = 429.469, y = 207.891, z = -26.968 }, rot = { x = 0.000, y = 97.105, z = 0.000 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002, area_id = 9 },
	{ config_id = 250, monster_id = 21011001, pos = { x = 445.003, y = 212.944, z = -24.369 }, rot = { x = 0.000, y = 206.924, z = 0.000 }, level = 19, drop_tag = "远程丘丘人", pose_id = 32, area_id = 9 },
	{ config_id = 251, monster_id = 21020201, pos = { x = 434.660, y = 207.838, z = -25.409 }, rot = { x = 0.000, y = 181.180, z = 0.000 }, level = 21, drop_tag = "丘丘暴徒", isElite = true, pose_id = 401, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 406, gadget_id = 70211022, pos = { x = 438.050, y = 207.888, z = -22.801 }, rot = { x = 8.718, y = 191.097, z = 1.703 }, level = 16, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 407, gadget_id = 70310009, pos = { x = 428.306, y = 207.928, z = -23.266 }, rot = { x = 359.883, y = 358.506, z = 356.768 }, level = 19, state = GadgetState.GearStart, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000192, name = "ANY_MONSTER_DIE_192", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_192", action = "action_EVENT_ANY_MONSTER_DIE_192" }
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
		-- description = suite_1,
		monsters = { 248, 249, 250, 251 },
		gadgets = { 406, 407 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_192" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_192(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_192(context, evt)
	-- 将configid为 406 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 406, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end
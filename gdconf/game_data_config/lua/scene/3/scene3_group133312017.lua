-- 基础信息
local base_info = {
	group_id = 133312017
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 17001, monster_id = 21010201, pos = { x = -2940.079, y = 35.046, z = 4527.877 }, rot = { x = 0.000, y = 332.030, z = 0.000 }, level = 32, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 28 },
	{ config_id = 17004, monster_id = 21010201, pos = { x = -2944.210, y = 34.577, z = 4549.321 }, rot = { x = 0.000, y = 295.450, z = 0.000 }, level = 32, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 28 },
	{ config_id = 17005, monster_id = 21010101, pos = { x = -2958.499, y = 35.657, z = 4539.349 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "丘丘人", area_id = 28 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 17002, gadget_id = 70211002, pos = { x = -2954.056, y = 35.996, z = 4560.817 }, rot = { x = 3.940, y = 155.684, z = 3.038 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 28 },
	{ config_id = 17006, gadget_id = 70330197, pos = { x = -2950.926, y = 35.632, z = 4561.741 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 17007, gadget_id = 70330197, pos = { x = -2968.124, y = 43.777, z = 4584.530 }, rot = { x = 0.000, y = 68.448, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 17008, gadget_id = 70220013, pos = { x = -2964.728, y = 36.747, z = 4546.791 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 17009, gadget_id = 70220026, pos = { x = -2965.293, y = 36.750, z = 4548.814 }, rot = { x = 0.000, y = 330.014, z = 0.000 }, level = 32, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1017003, name = "ANY_MONSTER_DIE_17003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_17003", action = "action_EVENT_ANY_MONSTER_DIE_17003" }
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
		monsters = { 17001, 17004, 17005 },
		gadgets = { 17002, 17006, 17007, 17008, 17009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_17003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_17003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_17003(context, evt)
	-- 将configid为 17002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 17002, GadgetState.Default) then
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
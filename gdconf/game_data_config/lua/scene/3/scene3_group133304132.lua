-- 基础信息
local base_info = {
	group_id = 133304132
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 132001, monster_id = 25310301, pos = { x = -1921.141, y = 207.680, z = 2959.355 }, rot = { x = 0.000, y = 118.482, z = 0.000 }, level = 30, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 9003, area_id = 21 },
	{ config_id = 132004, monster_id = 25310101, pos = { x = -1921.020, y = 208.045, z = 2946.544 }, rot = { x = 0.000, y = 38.035, z = 0.000 }, level = 30, drop_tag = "中级镀金旅团", pose_id = 1, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 132002, gadget_id = 70211002, pos = { x = -1917.831, y = 219.646, z = 2964.881 }, rot = { x = 0.000, y = 327.319, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 },
	{ config_id = 132006, gadget_id = 70210101, pos = { x = -1889.988, y = 213.061, z = 2961.746 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1132003, name = "ANY_MONSTER_DIE_132003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_132003", action = "action_EVENT_ANY_MONSTER_DIE_132003", trigger_count = 0 }
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
		monsters = { 132001, 132004 },
		gadgets = { 132002, 132006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_132003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_132003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_132003(context, evt)
	-- 将configid为 132002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 132002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 201017012
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 12001, monster_id = 20010901, pos = { x = 4.341, y = 69.435, z = 75.929 }, rot = { x = 0.000, y = 279.360, z = 0.000 }, level = 1 },
	{ config_id = 12002, monster_id = 20010601, pos = { x = 1.303, y = 69.457, z = 71.880 }, rot = { x = 0.000, y = 333.870, z = 0.000 }, level = 1, affix = { 6104 } },
	{ config_id = 12003, monster_id = 20010701, pos = { x = -4.669, y = 69.433, z = 71.470 }, rot = { x = 0.000, y = 14.264, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1012007, name = "ANY_MONSTER_DIE_12007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_12007", action = "action_EVENT_ANY_MONSTER_DIE_12007" }
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
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_12007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 12001, 12002, 12003 },
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
function condition_EVENT_ANY_MONSTER_DIE_12007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_12007(context, evt)
	-- 改变指定group组201017010中， configid为10010的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201017010, 10010, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end
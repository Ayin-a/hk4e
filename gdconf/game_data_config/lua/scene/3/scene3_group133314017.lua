-- 基础信息
local base_info = {
	group_id = 133314017
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 17001, monster_id = 21010901, pos = { x = -202.581, y = -48.833, z = 4778.433 }, rot = { x = 0.000, y = 177.426, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 32 },
	{ config_id = 17002, monster_id = 21010901, pos = { x = -202.821, y = -47.603, z = 4773.975 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 32 },
	{ config_id = 17004, monster_id = 28060301, pos = { x = -202.110, y = -46.268, z = 4776.149 }, rot = { x = 0.000, y = 89.275, z = 0.000 }, level = 32, drop_tag = "鸟类", disableWander = true, pose_id = 101, area_id = 32 }
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
		monsters = { 17001, 17002, 17004 },
		gadgets = { },
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
	-- 改变指定group组133314291中， configid为291001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133314291, 291001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end
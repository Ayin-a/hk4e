-- 基础信息
local base_info = {
	group_id = 111101244
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 244001, monster_id = 21020401, pos = { x = 2386.846, y = 254.747, z = -1269.251 }, rot = { x = 0.000, y = 142.656, z = 0.000 }, level = 1, drop_tag = "丘丘岩盔王" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 244002, gadget_id = 70211122, pos = { x = 2390.078, y = 254.683, z = -1269.283 }, rot = { x = 0.000, y = 18.229, z = 0.000 }, level = 1, drop_tag = "解谜高级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 244003, gadget_id = 70310001, pos = { x = 2382.144, y = 254.186, z = -1271.262 }, rot = { x = 0.000, y = 12.402, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1244004, name = "ANY_MONSTER_DIE_244004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_244004", action = "action_EVENT_ANY_MONSTER_DIE_244004", trigger_count = 0 }
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
		monsters = { 244001 },
		gadgets = { 244002, 244003 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_244004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_244004(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 111101244) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_244004(context, evt)
	-- 将configid为 244002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 244002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
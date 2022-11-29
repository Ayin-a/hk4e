-- 基础信息
local base_info = {
	group_id = 220157004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4003, monster_id = 28060402, pos = { x = 281.082, y = 174.332, z = 257.716 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, pose_id = 3 },
	{ config_id = 4004, monster_id = 28060402, pos = { x = 279.583, y = 174.332, z = 260.226 }, rot = { x = 0.000, y = 320.000, z = 0.000 }, level = 1, pose_id = 3 },
	{ config_id = 4005, monster_id = 28060402, pos = { x = 277.480, y = 174.332, z = 255.986 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, pose_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4001, gadget_id = 70350004, pos = { x = 282.719, y = 174.649, z = 258.522 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 4002, gadget_id = 70211102, pos = { x = 287.722, y = 174.342, z = 257.807 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 1, drop_tag = "解谜低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1004006, name = "ANY_MONSTER_DIE_4006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4006", action = "action_EVENT_ANY_MONSTER_DIE_4006" }
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
		gadgets = { 4001, 4002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 4003, 4004, 4005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4006(context, evt)
	-- 将configid为 4001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 4002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
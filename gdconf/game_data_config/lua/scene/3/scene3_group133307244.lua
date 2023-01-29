-- 基础信息
local base_info = {
	group_id = 133307244
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 244003, monster_id = 23010601, pos = { x = -1253.098, y = 68.589, z = 5141.853 }, rot = { x = 0.000, y = 215.323, z = 0.000 }, level = 32, drop_tag = "先遣队", disableWander = true, pose_id = 9001, area_id = 32 },
	{ config_id = 244004, monster_id = 23020101, pos = { x = -1244.218, y = 72.067, z = 5136.269 }, rot = { x = 0.000, y = 277.526, z = 0.000 }, level = 32, drop_tag = "债务处理人", disableWander = true, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 244005, gadget_id = 70211002, pos = { x = -1244.681, y = 71.893, z = 5131.437 }, rot = { x = 358.650, y = 13.814, z = 359.741 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1244006, name = "ANY_MONSTER_DIE_244006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_244006", action = "action_EVENT_ANY_MONSTER_DIE_244006" }
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
		monsters = { 244003, 244004 },
		gadgets = { 244005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_244006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
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
function condition_EVENT_ANY_MONSTER_DIE_244006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_244006(context, evt)
	-- 将configid为 244005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 244005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
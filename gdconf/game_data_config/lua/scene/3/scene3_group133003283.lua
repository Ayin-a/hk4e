-- 基础信息
local base_info = {
	group_id = 133003283
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1086, monster_id = 21010301, pos = { x = 2098.299, y = 213.078, z = -1308.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 9, drop_tag = "丘丘人", disableWander = true, area_id = 1 },
	{ config_id = 1087, monster_id = 21010401, pos = { x = 2095.069, y = 213.158, z = -1314.309 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 9, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3401, gadget_id = 70211002, pos = { x = 2097.826, y = 213.523, z = -1313.638 }, rot = { x = 5.402, y = 350.393, z = 6.404 }, level = 1, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 3402, gadget_id = 70310001, pos = { x = 2099.850, y = 213.503, z = -1309.856 }, rot = { x = 0.000, y = 231.872, z = 0.000 }, level = 5, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 3403, gadget_id = 70220014, pos = { x = 2095.599, y = 213.525, z = -1316.146 }, rot = { x = 0.000, y = 299.765, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 3404, gadget_id = 70220014, pos = { x = 2094.587, y = 213.341, z = -1316.062 }, rot = { x = 0.000, y = 187.799, z = 0.000 }, level = 5, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000271, name = "ANY_MONSTER_DIE_271", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_271", action = "action_EVENT_ANY_MONSTER_DIE_271" }
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
		monsters = { 1086, 1087 },
		gadgets = { 3401, 3402, 3403, 3404 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_271" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_271(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_271(context, evt)
	-- 解锁目标3401
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 3401, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 133008028
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 28002, monster_id = 25010601, pos = { x = 1460.874, y = 277.358, z = -1013.232 }, rot = { x = 0.000, y = 347.608, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 9002, climate_area_id = 1, area_id = 10 },
	{ config_id = 28003, monster_id = 25070101, pos = { x = 1461.234, y = 277.866, z = -1010.910 }, rot = { x = 0.000, y = 206.253, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 9006, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 28001, gadget_id = 70211012, pos = { x = 1457.505, y = 278.362, z = -1010.376 }, rot = { x = 16.161, y = 86.554, z = 353.044 }, level = 26, drop_tag = "雪山战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1028004, name = "ANY_MONSTER_DIE_28004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_28004", action = "action_EVENT_ANY_MONSTER_DIE_28004" }
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
		monsters = { 28002, 28003 },
		gadgets = { 28001 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_28004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_28004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_28004(context, evt)
	-- 将configid为 28001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 28001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
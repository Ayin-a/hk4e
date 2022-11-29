-- 基础信息
local base_info = {
	group_id = 166001156
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 156002, monster_id = 25010401, pos = { x = 921.972, y = 991.717, z = 641.328 }, rot = { x = 0.000, y = 78.369, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 9006, area_id = 300 },
	{ config_id = 156003, monster_id = 25070101, pos = { x = 924.676, y = 991.629, z = 640.989 }, rot = { x = 0.000, y = 261.937, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 9006, area_id = 300 },
	{ config_id = 156004, monster_id = 25060101, pos = { x = 924.796, y = 991.484, z = 638.891 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "盗宝团", area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 156001, gadget_id = 70211002, pos = { x = 919.314, y = 991.690, z = 641.134 }, rot = { x = 0.000, y = 91.947, z = 0.000 }, level = 26, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1156005, name = "ANY_MONSTER_DIE_156005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_156005", action = "action_EVENT_ANY_MONSTER_DIE_156005" }
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
		monsters = { 156002, 156003, 156004 },
		gadgets = { 156001 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_156005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_156005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_156005(context, evt)
	-- 将configid为 156001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 156001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
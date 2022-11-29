-- 基础信息
local base_info = {
	group_id = 177003012
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 12002, monster_id = 22070102, pos = { x = 1276.410, y = 235.748, z = -757.544 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 212000001, affix = { 5135, 1006, 1007 }, pose_id = 9001, area_id = 210 },
	{ config_id = 12003, monster_id = 22070302, pos = { x = 1280.337, y = 236.124, z = -756.334 }, rot = { x = 0.000, y = 280.862, z = 0.000 }, level = 36, drop_id = 212000001, disableWander = true, affix = { 5135, 1006, 1007 }, pose_id = 101, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 12001, gadget_id = 70211022, pos = { x = 1277.427, y = 235.822, z = -754.408 }, rot = { x = 0.000, y = 280.216, z = 0.000 }, level = 26, chest_drop_id = 212000004, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 210 },
	{ config_id = 12005, gadget_id = 70220048, pos = { x = 1280.647, y = 236.067, z = -745.638 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 12006, gadget_id = 70220048, pos = { x = 1282.299, y = 236.171, z = -746.126 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 12007, gadget_id = 70220048, pos = { x = 1276.519, y = 236.689, z = -772.213 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 12008, gadget_id = 70220014, pos = { x = 1276.050, y = 236.168, z = -762.006 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 12009, gadget_id = 70220014, pos = { x = 1275.755, y = 236.250, z = -763.047 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1012004, name = "ANY_MONSTER_DIE_12004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_12004", action = "action_EVENT_ANY_MONSTER_DIE_12004" }
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
		monsters = { 12002, 12003 },
		gadgets = { 12001, 12005, 12006, 12007, 12008, 12009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_12004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_12004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_12004(context, evt)
	-- 将configid为 12001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 12001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
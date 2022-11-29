-- 基础信息
local base_info = {
	group_id = 133106601
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 601001, monster_id = 20011301, pos = { x = -563.527, y = 254.860, z = 1485.967 }, rot = { x = 0.000, y = 28.042, z = 0.000 }, level = 36, drop_tag = "大史莱姆", disableWander = true, area_id = 19 },
	{ config_id = 601002, monster_id = 20010901, pos = { x = -543.240, y = 263.036, z = 1507.043 }, rot = { x = 0.000, y = 243.596, z = 0.000 }, level = 36, drop_tag = "大史莱姆", disableWander = true, area_id = 19 },
	{ config_id = 601003, monster_id = 20010601, pos = { x = -556.845, y = 255.317, z = 1504.946 }, rot = { x = 0.000, y = 131.009, z = 0.000 }, level = 36, drop_tag = "大史莱姆", disableWander = true, area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 601004, gadget_id = 70220020, pos = { x = -553.358, y = 256.501, z = 1510.059 }, rot = { x = 23.783, y = 336.014, z = 20.207 }, level = 36, area_id = 19 },
	{ config_id = 601005, gadget_id = 70220003, pos = { x = -546.704, y = 259.891, z = 1511.752 }, rot = { x = 353.680, y = 187.793, z = 332.035 }, level = 36, area_id = 19 },
	{ config_id = 601006, gadget_id = 70220003, pos = { x = -561.435, y = 253.697, z = 1498.039 }, rot = { x = 325.479, y = 109.642, z = 358.562 }, level = 36, area_id = 19 },
	{ config_id = 601008, gadget_id = 70211012, pos = { x = -552.487, y = 260.018, z = 1496.311 }, rot = { x = 13.993, y = 355.066, z = 31.811 }, level = 26, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1601007, name = "ANY_MONSTER_DIE_601007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_601007", action = "action_EVENT_ANY_MONSTER_DIE_601007" }
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
		monsters = { 601001, 601002, 601003 },
		gadgets = { 601004, 601005, 601006, 601008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_601007" },
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
function condition_EVENT_ANY_MONSTER_DIE_601007(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133106601) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_601007(context, evt)
	-- 将configid为 601008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 601008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
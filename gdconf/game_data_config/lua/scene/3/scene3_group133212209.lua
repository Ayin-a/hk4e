-- 基础信息
local base_info = {
	group_id = 133212209
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 209001, monster_id = 21011001, pos = { x = -3447.668, y = 205.980, z = -2764.216 }, rot = { x = 0.000, y = 227.832, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 13 },
	{ config_id = 209002, monster_id = 21010301, pos = { x = -3450.196, y = 203.437, z = -2766.963 }, rot = { x = 0.000, y = 70.906, z = 0.000 }, level = 27, drop_tag = "丘丘人", pose_id = 9016, area_id = 13 },
	{ config_id = 209003, monster_id = 21011601, pos = { x = -3450.359, y = 201.939, z = -2777.160 }, rot = { x = 0.000, y = 227.576, z = 0.000 }, level = 27, drop_tag = "丘丘人", pose_id = 9003, area_id = 13 },
	{ config_id = 209004, monster_id = 21020701, pos = { x = -3463.053, y = 201.542, z = -2768.122 }, rot = { x = 0.000, y = 143.975, z = 0.000 }, level = 27, drop_tag = "丘丘暴徒", area_id = 13 },
	{ config_id = 209005, monster_id = 21010201, pos = { x = -3445.408, y = 200.814, z = -2774.067 }, rot = { x = 0.000, y = 341.477, z = 0.000 }, level = 27, drop_tag = "丘丘人", pose_id = 9016, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 209006, gadget_id = 70210101, pos = { x = -3452.263, y = 200.988, z = -2779.193 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬稻妻", area_id = 13 },
	{ config_id = 209007, gadget_id = 70210101, pos = { x = -3461.925, y = 200.879, z = -2759.032 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬稻妻", area_id = 13 },
	{ config_id = 209008, gadget_id = 70210101, pos = { x = -3442.191, y = 201.083, z = -2763.279 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损稻妻", area_id = 13 },
	{ config_id = 209009, gadget_id = 70220014, pos = { x = -3459.114, y = 201.545, z = -2765.812 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 209010, gadget_id = 70220014, pos = { x = -3459.474, y = 201.655, z = -2767.085 }, rot = { x = 1.866, y = 52.323, z = 5.328 }, level = 27, area_id = 13 },
	{ config_id = 209011, gadget_id = 70300089, pos = { x = -3477.561, y = 200.145, z = -2771.588 }, rot = { x = 0.000, y = 65.781, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 209012, gadget_id = 70300089, pos = { x = -3481.640, y = 200.065, z = -2781.064 }, rot = { x = 0.000, y = 320.178, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 209013, gadget_id = 70300089, pos = { x = -3430.795, y = 199.975, z = -2754.291 }, rot = { x = 0.000, y = 80.030, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 209014, gadget_id = 70211012, pos = { x = -3449.277, y = 200.962, z = -2775.840 }, rot = { x = 352.817, y = 290.419, z = 3.962 }, level = 26, drop_tag = "战斗中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1209015, name = "ANY_MONSTER_DIE_209015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_209015", action = "action_EVENT_ANY_MONSTER_DIE_209015" }
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
		monsters = { 209001, 209002, 209003, 209004, 209005 },
		gadgets = { 209006, 209007, 209008, 209009, 209010, 209011, 209012, 209013, 209014 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_209015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_209015(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_209015(context, evt)
	-- 将configid为 209014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 209014, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
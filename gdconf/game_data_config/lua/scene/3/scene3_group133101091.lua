-- 基础信息
local base_info = {
	group_id = 133101091
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 91001, monster_id = 21030401, pos = { x = 1589.358, y = 201.716, z = 1142.026 }, rot = { x = 9.837, y = 199.526, z = 358.792 }, level = 23, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 5 },
	{ config_id = 91004, monster_id = 21010501, pos = { x = 1592.261, y = 201.592, z = 1138.527 }, rot = { x = 347.417, y = 311.599, z = 358.266 }, level = 23, drop_tag = "远程丘丘人", pose_id = 32, area_id = 5 },
	{ config_id = 91005, monster_id = 21010901, pos = { x = 1590.817, y = 202.253, z = 1144.485 }, rot = { x = 11.181, y = 209.673, z = 358.244 }, level = 23, drop_tag = "远程丘丘人", pose_id = 32, area_id = 5 },
	{ config_id = 91006, monster_id = 21011001, pos = { x = 1584.562, y = 201.689, z = 1141.786 }, rot = { x = 1.637, y = 94.774, z = 351.225 }, level = 23, drop_tag = "远程丘丘人", pose_id = 32, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 91002, gadget_id = 70211012, pos = { x = 1588.321, y = 201.507, z = 1139.469 }, rot = { x = 359.123, y = 359.912, z = 11.483 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 91007, gadget_id = 70220013, pos = { x = 1589.525, y = 201.493, z = 1134.241 }, rot = { x = 353.761, y = 359.902, z = 1.790 }, level = 19, area_id = 5 },
	{ config_id = 91008, gadget_id = 70220013, pos = { x = 1587.102, y = 201.362, z = 1134.966 }, rot = { x = 357.599, y = 42.129, z = 2.652 }, level = 19, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1091003, name = "ANY_MONSTER_DIE_91003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_91003", action = "action_EVENT_ANY_MONSTER_DIE_91003" }
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
		monsters = { 91001, 91004, 91005, 91006 },
		gadgets = { 91002, 91007, 91008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_91003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_91003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_91003(context, evt)
	-- 将configid为 91002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
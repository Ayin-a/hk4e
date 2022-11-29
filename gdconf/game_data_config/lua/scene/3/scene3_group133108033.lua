-- 基础信息
local base_info = {
	group_id = 133108033
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 33001, monster_id = 21011001, pos = { x = -86.255, y = 202.923, z = -789.483 }, rot = { x = 0.480, y = 0.129, z = 1.614 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 7 },
	{ config_id = 33004, monster_id = 21010901, pos = { x = -93.580, y = 200.239, z = -786.768 }, rot = { x = 0.000, y = 32.077, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 7 },
	{ config_id = 33005, monster_id = 21011201, pos = { x = -88.800, y = 200.442, z = -783.521 }, rot = { x = 0.000, y = 10.706, z = 0.000 }, level = 30, drop_tag = "丘丘人", pose_id = 9010, area_id = 7 },
	{ config_id = 33006, monster_id = 21010501, pos = { x = -84.118, y = 204.519, z = -794.705 }, rot = { x = 0.000, y = 352.224, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", pose_id = 32, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 33002, gadget_id = 70211012, pos = { x = -91.269, y = 200.615, z = -789.097 }, rot = { x = 359.393, y = 4.318, z = 7.982 }, level = 26, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 33007, gadget_id = 70310001, pos = { x = -89.040, y = 200.896, z = -792.726 }, rot = { x = 357.346, y = 359.724, z = 6.248 }, level = 32, state = GadgetState.GearStart, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1033003, name = "ANY_MONSTER_DIE_33003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_33003", action = "action_EVENT_ANY_MONSTER_DIE_33003" }
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
		monsters = { 33001, 33004, 33005, 33006 },
		gadgets = { 33002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_33003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_33003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_33003(context, evt)
	-- 将configid为 33002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 33002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
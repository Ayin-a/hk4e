-- 基础信息
local base_info = {
	group_id = 111101287
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 287012, monster_id = 21010501, pos = { x = 2180.521, y = 260.988, z = -1754.586 }, rot = { x = 0.000, y = 114.441, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", pose_id = 9014 },
	{ config_id = 287013, monster_id = 21010701, pos = { x = 2174.290, y = 260.688, z = -1747.990 }, rot = { x = 0.000, y = 25.051, z = 0.000 }, level = 1, drop_tag = "丘丘人", pose_id = 9013 },
	{ config_id = 287014, monster_id = 21010601, pos = { x = 2181.394, y = 260.552, z = -1751.529 }, rot = { x = 0.000, y = 271.678, z = 0.000 }, level = 1, drop_tag = "丘丘人", pose_id = 9016 },
	{ config_id = 287015, monster_id = 21010301, pos = { x = 2182.586, y = 260.293, z = -1743.792 }, rot = { x = 0.000, y = 321.407, z = 0.000 }, level = 1, drop_tag = "丘丘人", pose_id = 9013 },
	{ config_id = 287016, monster_id = 21020101, pos = { x = 2176.323, y = 260.614, z = -1751.831 }, rot = { x = 0.000, y = 27.650, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", pose_id = 401 },
	{ config_id = 287019, monster_id = 22010101, pos = { x = 2177.957, y = 260.307, z = -1752.803 }, rot = { x = 0.000, y = 37.397, z = 0.000 }, level = 1, drop_tag = "深渊法师" },
	{ config_id = 287020, monster_id = 22010301, pos = { x = 2180.746, y = 260.864, z = -1753.392 }, rot = { x = 0.000, y = 321.952, z = 0.000 }, level = 1, drop_tag = "深渊法师" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 287001, gadget_id = 70220013, pos = { x = 2188.830, y = 261.023, z = -1752.291 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 287002, gadget_id = 70220013, pos = { x = 2180.549, y = 261.141, z = -1758.250 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 287003, gadget_id = 70220014, pos = { x = 2187.920, y = 260.973, z = -1750.874 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 287004, gadget_id = 70220026, pos = { x = 2187.161, y = 261.052, z = -1752.932 }, rot = { x = 0.000, y = 25.598, z = 0.000 }, level = 1 },
	{ config_id = 287005, gadget_id = 70300108, pos = { x = 2190.384, y = 261.268, z = -1759.047 }, rot = { x = 0.000, y = 209.908, z = 0.000 }, level = 1 },
	{ config_id = 287006, gadget_id = 70300108, pos = { x = 2187.116, y = 261.429, z = -1759.929 }, rot = { x = 331.742, y = 227.067, z = 356.641 }, level = 1 },
	{ config_id = 287007, gadget_id = 70300089, pos = { x = 2179.622, y = 260.599, z = -1750.692 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 287008, gadget_id = 70300108, pos = { x = 2187.722, y = 261.151, z = -1755.838 }, rot = { x = 349.841, y = 197.289, z = 2.798 }, level = 1 },
	{ config_id = 287009, gadget_id = 70300086, pos = { x = 2186.088, y = 260.624, z = -1749.027 }, rot = { x = 351.988, y = 335.312, z = 24.338 }, level = 1 },
	{ config_id = 287010, gadget_id = 70220026, pos = { x = 2184.544, y = 260.884, z = -1750.396 }, rot = { x = 0.000, y = 326.704, z = 0.000 }, level = 1 },
	{ config_id = 287011, gadget_id = 70310001, pos = { x = 2175.908, y = 260.433, z = -1745.461 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 287017, gadget_id = 70220005, pos = { x = 2174.640, y = 260.489, z = -1749.887 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 287018, gadget_id = 70220005, pos = { x = 2177.118, y = 260.836, z = -1755.146 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 287023, gadget_id = 70211021, pos = { x = 2179.140, y = 260.463, z = -1749.267 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 11, drop_tag = "战斗高级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 287024, gadget_id = 70300081, pos = { x = 2177.499, y = 260.974, z = -1756.821 }, rot = { x = 0.000, y = 105.009, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1287021, name = "ANY_MONSTER_DIE_287021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_287021", action = "action_EVENT_ANY_MONSTER_DIE_287021" },
	{ config_id = 1287022, name = "ANY_MONSTER_DIE_287022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_287022", action = "action_EVENT_ANY_MONSTER_DIE_287022" }
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
		monsters = { 287012, 287013, 287014, 287015, 287016 },
		gadgets = { 287001, 287002, 287003, 287004, 287005, 287006, 287007, 287008, 287009, 287010, 287011, 287017, 287018, 287023, 287024 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_287021" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 287019, 287020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_287022" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_287021(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 111101287) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_287021(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101287, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_287022(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 111101287) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_287022(context, evt)
	-- 改变指定group组111101287中， configid为287023的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 111101287, 287023, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end
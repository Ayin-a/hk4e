-- 基础信息
local base_info = {
	group_id = 111101024
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 24006, monster_id = 21010101, pos = { x = 2182.101, y = 258.977, z = -1726.138 }, rot = { x = 0.000, y = 189.118, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9012 },
	{ config_id = 24007, monster_id = 21010101, pos = { x = 2180.200, y = 259.076, z = -1724.695 }, rot = { x = 0.000, y = 189.118, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9012 },
	{ config_id = 24008, monster_id = 21010101, pos = { x = 2184.260, y = 259.021, z = -1725.651 }, rot = { x = 0.000, y = 189.118, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9012 },
	{ config_id = 24009, monster_id = 21020201, pos = { x = 2181.240, y = 258.997, z = -1729.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 401 },
	{ config_id = 24012, monster_id = 21010401, pos = { x = 2190.103, y = 261.297, z = -1729.832 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 24013, monster_id = 21010401, pos = { x = 2175.202, y = 261.749, z = -1726.669 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 24014, monster_id = 21010301, pos = { x = 2184.786, y = 259.320, z = -1731.145 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 24015, monster_id = 21010301, pos = { x = 2177.618, y = 259.033, z = -1730.124 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 24001, gadget_id = 70220013, pos = { x = 2175.133, y = 258.690, z = -1727.681 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 24002, gadget_id = 70220013, pos = { x = 2175.155, y = 258.510, z = -1725.804 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 24003, gadget_id = 70220013, pos = { x = 2175.113, y = 260.129, z = -1726.562 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 24004, gadget_id = 70310001, pos = { x = 2179.502, y = 258.696, z = -1720.923 }, rot = { x = 0.000, y = 0.000, z = 0.895 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 24005, gadget_id = 70310001, pos = { x = 2189.122, y = 259.105, z = -1723.162 }, rot = { x = 8.796, y = 0.617, z = 8.005 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 24010, gadget_id = 70220013, pos = { x = 2190.182, y = 259.677, z = -1729.926 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 24011, gadget_id = 70220013, pos = { x = 2189.670, y = 259.638, z = -1727.894 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 24016, gadget_id = 70211002, pos = { x = 2183.202, y = 259.015, z = -1730.738 }, rot = { x = 0.895, y = 0.035, z = 0.896 }, level = 11, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL }
}

-- 区域
regions = {
	{ config_id = 24017, shape = RegionShape.SPHERE, radius = 9.3, pos = { x = 2182.027, y = 258.995, z = -1728.919 } }
}

-- 触发器
triggers = {
	{ config_id = 1024017, name = "ENTER_REGION_24017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_24017", trigger_count = 0 },
	{ config_id = 1024018, name = "ANY_MONSTER_DIE_24018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_24018", action = "action_EVENT_ANY_MONSTER_DIE_24018" },
	-- 开箱子解锁D区域方碑
	{ config_id = 1024019, name = "GADGET_STATE_CHANGE_24019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_24019", action = "action_EVENT_GADGET_STATE_CHANGE_24019" }
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
		monsters = { 24006, 24007, 24008, 24009 },
		gadgets = { 24001, 24002, 24003, 24004, 24005, 24010, 24011, 24016 },
		regions = { 24017 },
		triggers = { "ENTER_REGION_24017", "ANY_MONSTER_DIE_24018", "GADGET_STATE_CHANGE_24019" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 24012, 24013, 24014, 24015 },
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

-- 触发操作
function action_EVENT_ENTER_REGION_24017(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101024, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_24018(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_24018(context, evt)
	-- 将configid为 24016 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 24016, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_24019(context, evt)
	-- 检测config_id为24016的gadget是否从GadgetState.Default变为GadgetState.ChestOpened
	if 24016 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_24019(context, evt)
	-- 改变指定group组111101029中， configid为29002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 111101029, 29002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "open2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "open2", 1, 111101029) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end
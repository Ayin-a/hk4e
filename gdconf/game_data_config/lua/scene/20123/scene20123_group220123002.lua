-- 基础信息
local base_info = {
	group_id = 220123002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2002, monster_id = 25100401, pos = { x = -11.963, y = -7.973, z = -29.014 }, rot = { x = 0.000, y = 89.180, z = 0.000 }, level = 1, disableWander = true, affix = { 1101 }, pose_id = 1002 },
	{ config_id = 2003, monster_id = 25080101, pos = { x = -14.147, y = -7.934, z = -29.725 }, rot = { x = 0.000, y = 80.248, z = 0.000 }, level = 1, disableWander = true, affix = { 1101 }, pose_id = 1003 },
	{ config_id = 2004, monster_id = 25080301, pos = { x = -13.911, y = -7.990, z = -27.792 }, rot = { x = 0.000, y = 117.911, z = 0.000 }, level = 1, disableWander = true, affix = { 1101 }, pose_id = 1003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2001, gadget_id = 70290138, pos = { x = -4.986, y = -7.084, z = -28.974 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 2007, gadget_id = 70211012, pos = { x = -9.010, y = -7.990, z = -28.770 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_tag = "战斗中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 2008, gadget_id = 70220048, pos = { x = -23.378, y = -7.795, z = -29.984 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2009, gadget_id = 70220065, pos = { x = -24.185, y = -7.821, z = -25.991 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 2010, gadget_id = 70220065, pos = { x = -20.572, y = -7.990, z = -19.773 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 2011, gadget_id = 70220048, pos = { x = -13.884, y = -7.557, z = -33.962 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2012, gadget_id = 70220065, pos = { x = -7.603, y = -7.990, z = -23.680 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 2013, gadget_id = 70220050, pos = { x = 11.077, y = -7.132, z = -19.499 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2014, gadget_id = 70220062, pos = { x = 10.905, y = -7.153, z = -18.062 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 }
}

-- 区域
regions = {
	{ config_id = 2005, shape = RegionShape.SPHERE, radius = 6, pos = { x = -6.311, y = -3.026, z = -19.377 } }
}

-- 触发器
triggers = {
	{ config_id = 1002005, name = "ENTER_REGION_2005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_2005" },
	{ config_id = 1002006, name = "ANY_MONSTER_DIE_2006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2006", action = "action_EVENT_ANY_MONSTER_DIE_2006" }
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
		monsters = { },
		gadgets = { 2001, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014 },
		regions = { 2005 },
		triggers = { "ENTER_REGION_2005", "ANY_MONSTER_DIE_2006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 2002, 2003, 2004 },
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
function action_EVENT_ENTER_REGION_2005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220123002, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2006(context, evt)
	-- 将configid为 2001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "stage" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 3, 220123001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 改变指定group组220123002中， configid为2007的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220123002, 2007, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220123004中， configid为4001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220123004, 4001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end
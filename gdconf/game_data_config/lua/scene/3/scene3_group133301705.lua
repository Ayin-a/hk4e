-- 基础信息
local base_info = {
	group_id = 133301705
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 705002, monster_id = 26090901, pos = { x = -556.341, y = -40.285, z = 3824.318 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "蕈兽", pose_id = 101, area_id = 25 },
	{ config_id = 705003, monster_id = 26090901, pos = { x = -554.969, y = -39.567, z = 3828.774 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "蕈兽", pose_id = 101, area_id = 25 },
	{ config_id = 705004, monster_id = 20011501, pos = { x = -544.783, y = -42.809, z = 3825.607 }, rot = { x = 0.000, y = 264.477, z = 0.000 }, level = 33, drop_tag = "大史莱姆", area_id = 25 },
	{ config_id = 705007, monster_id = 20060201, pos = { x = -548.124, y = -41.017, z = 3821.156 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "飘浮灵", pose_id = 101, area_id = 25 },
	{ config_id = 705008, monster_id = 20060201, pos = { x = -552.883, y = -40.808, z = 3826.104 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "飘浮灵", pose_id = 101, area_id = 25 },
	{ config_id = 705009, monster_id = 20060201, pos = { x = -546.265, y = -41.201, z = 3829.580 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "飘浮灵", pose_id = 101, area_id = 25 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 705005, gadget_id = 70900050, pos = { x = -533.336, y = -38.196, z = 3816.191 }, rot = { x = 0.830, y = 357.055, z = 19.697 }, level = 33, state = GadgetState.GearStop, persistent = true, area_id = 25 }
}

-- 区域
regions = {
	{ config_id = 705001, shape = RegionShape.SPHERE, radius = 5, pos = { x = -550.636, y = -40.328, z = 3826.542 }, area_id = 25 }
}

-- 触发器
triggers = {
	{ config_id = 1705001, name = "ENTER_REGION_705001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_705001" },
	{ config_id = 1705006, name = "ANY_MONSTER_DIE_705006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_705006", action = "action_EVENT_ANY_MONSTER_DIE_705006" },
	{ config_id = 1705010, name = "ANY_MONSTER_DIE_705010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_705010", action = "action_EVENT_ANY_MONSTER_DIE_705010" },
	-- 开门
	{ config_id = 1705011, name = "GADGET_STATE_CHANGE_705011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_705011", action = "action_EVENT_GADGET_STATE_CHANGE_705011" },
	-- 保底就完事了
	{ config_id = 1705012, name = "GROUP_LOAD_705012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_705012", action = "action_EVENT_GROUP_LOAD_705012", trigger_count = 0 }
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
		gadgets = { 705005 },
		regions = { 705001 },
		triggers = { "ENTER_REGION_705001", "GROUP_LOAD_705012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 705002, 705003, 705004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_705006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 705007, 705008, 705009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_705010", "GADGET_STATE_CHANGE_705011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_705001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301705, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_705006(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133301705) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_705006(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301705, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_705010(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133301705) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_705010(context, evt)
	-- 将configid为 705005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 705005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_705011(context, evt)
	if 705005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_705011(context, evt)
	-- 改变指定group组133301572中， configid为572002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133301572, 572002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_705012(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133301705, 705005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_705012(context, evt)
	-- 改变指定group组133301572中， configid为572002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133301572, 572002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

require "V3_0/DeathFieldStandard"
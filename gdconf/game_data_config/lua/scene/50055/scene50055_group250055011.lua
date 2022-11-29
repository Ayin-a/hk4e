-- 基础信息
local base_info = {
	group_id = 250055011
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 11001, monster_id = 23010101, pos = { x = -103.092, y = 10.740, z = -65.206 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 85, disableWander = true },
	{ config_id = 11002, monster_id = 22020101, pos = { x = -106.185, y = 10.740, z = -58.754 }, rot = { x = 0.000, y = 200.000, z = 0.000 }, level = 85, disableWander = true, pose_id = 101 },
	{ config_id = 11003, monster_id = 23010401, pos = { x = -111.035, y = 10.740, z = -57.712 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 85, disableWander = true },
	{ config_id = 11004, monster_id = 22030101, pos = { x = -117.956, y = 10.740, z = -59.627 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 100, disableWander = true, pose_id = 101 },
	{ config_id = 11005, monster_id = 22020101, pos = { x = -118.066, y = 10.740, z = -69.909 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 100, disableWander = true, pose_id = 101 },
	{ config_id = 11006, monster_id = 21020701, pos = { x = -109.788, y = 10.740, z = -71.110 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 85, disableWander = true },
	{ config_id = 11007, monster_id = 23030101, pos = { x = -106.182, y = 10.740, z = -69.990 }, rot = { x = 0.000, y = 325.000, z = 0.000 }, level = 85, disableWander = true },
	{ config_id = 11008, monster_id = 25010601, pos = { x = -103.759, y = 10.740, z = -61.751 }, rot = { x = 0.000, y = 245.000, z = 0.000 }, level = 85, disableWander = true },
	{ config_id = 11009, monster_id = 25010201, pos = { x = -112.703, y = 10.740, z = -70.485 }, rot = { x = 0.000, y = 25.000, z = 0.000 }, level = 85, disableWander = true },
	{ config_id = 11010, monster_id = 25010201, pos = { x = -116.253, y = 10.740, z = -65.319 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 85, disableWander = true },
	{ config_id = 11011, monster_id = 25030201, pos = { x = -103.929, y = 10.740, z = -67.248 }, rot = { x = 0.000, y = 285.000, z = 0.000 }, level = 85, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 11012, gadget_id = 70360010, pos = { x = -109.714, y = 10.818, z = -64.854 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 11013, gadget_id = 70350003, pos = { x = -109.235, y = 10.538, z = -81.739 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 11014, gadget_id = 70350003, pos = { x = -109.352, y = 10.583, z = -48.404 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 11015, gadget_id = 70350003, pos = { x = -124.999, y = 10.538, z = -64.863 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 11016, gadget_id = 70350003, pos = { x = -93.200, y = 10.517, z = -65.018 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 11022, gadget_id = 70900201, pos = { x = -109.703, y = 10.837, z = -64.791 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 11019, shape = RegionShape.CUBIC, size = { x = 20.000, y = 10.000, z = 20.000 }, pos = { x = -108.997, y = 10.837, z = -64.629 } }
}

-- 触发器
triggers = {
	{ config_id = 1011017, name = "GADGET_CREATE_11017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_11017", action = "action_EVENT_GADGET_CREATE_11017" },
	{ config_id = 1011018, name = "SELECT_OPTION_11018", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_11018", action = "action_EVENT_SELECT_OPTION_11018" },
	{ config_id = 1011019, name = "ENTER_REGION_11019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_11019", action = "action_EVENT_ENTER_REGION_11019" },
	{ config_id = 1011020, name = "ANY_MONSTER_DIE_11020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_11020", action = "action_EVENT_ANY_MONSTER_DIE_11020" },
	{ config_id = 1011021, name = "ANY_MONSTER_DIE_11021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_11021", action = "action_EVENT_ANY_MONSTER_DIE_11021" }
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
		gadgets = { 11012, 11013, 11014, 11015, 11016, 11022 },
		regions = { 11019 },
		triggers = { "GADGET_CREATE_11017", "SELECT_OPTION_11018", "ENTER_REGION_11019" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 11004, 11005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
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
function condition_EVENT_GADGET_CREATE_11017(context, evt)
	if 11012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_11017(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250055011, 11012, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_11018(context, evt)
	-- 判断是gadgetid 11012 option_id 175
	if 11012 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_11018(context, evt)
	-- 将configid为 11012 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 11012, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 250055011 ；指定config：11012；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 250055011, 11012, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250055011, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_11019(context, evt)
	if evt.param1 ~= 11019 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_11019(context, evt)
	-- 将configid为 11013 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 11013, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 11014 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 11014, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 11015 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 11015, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 11016 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 11016, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_11020(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_11020(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250055011, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_11021(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_11021(context, evt)
	-- 将configid为 11013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 11013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 11014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 11014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 11015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 11015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 11016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 11016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
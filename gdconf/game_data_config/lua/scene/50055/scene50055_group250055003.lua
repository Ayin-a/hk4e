-- 基础信息
local base_info = {
	group_id = 250055003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 20010601, pos = { x = -102.176, y = 10.339, z = 143.177 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3002, monster_id = 20010601, pos = { x = -106.336, y = 10.340, z = 151.521 }, rot = { x = 0.000, y = 215.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3003, monster_id = 20010801, pos = { x = -110.170, y = 10.346, z = 152.266 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3004, monster_id = 20010801, pos = { x = -116.387, y = 10.347, z = 148.398 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3005, monster_id = 20010801, pos = { x = -114.477, y = 10.341, z = 140.379 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3006, monster_id = 20010801, pos = { x = -109.521, y = 10.339, z = 139.080 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3007, monster_id = 26010301, pos = { x = -104.377, y = 10.339, z = 140.617 }, rot = { x = 0.000, y = 325.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3008, monster_id = 26010101, pos = { x = -103.155, y = 10.339, z = 148.304 }, rot = { x = 0.000, y = 245.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3009, monster_id = 20010901, pos = { x = -102.304, y = 10.356, z = 146.364 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3010, monster_id = 20010901, pos = { x = -104.575, y = 10.355, z = 150.187 }, rot = { x = 0.000, y = 225.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3011, monster_id = 20010501, pos = { x = -111.849, y = 10.349, z = 152.227 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3022, monster_id = 20010501, pos = { x = -115.427, y = 10.342, z = 149.927 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3023, monster_id = 20010501, pos = { x = -115.393, y = 10.349, z = 142.077 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3024, monster_id = 20010501, pos = { x = -107.576, y = 10.355, z = 138.944 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3012, gadget_id = 70360001, pos = { x = -109.216, y = 10.339, z = 144.951 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3013, gadget_id = 70290137, pos = { x = -109.220, y = 10.986, z = 130.248 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3014, gadget_id = 70290137, pos = { x = -109.214, y = 11.013, z = 160.278 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3015, gadget_id = 70290137, pos = { x = -124.129, y = 10.998, z = 145.095 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3016, gadget_id = 70290137, pos = { x = -94.208, y = 10.939, z = 145.102 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 3019, shape = RegionShape.CUBIC, size = { x = 25.000, y = 10.000, z = 25.000 }, pos = { x = -109.101, y = 10.530, z = 144.844 } }
}

-- 触发器
triggers = {
	{ config_id = 1003017, name = "GADGET_CREATE_3017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_3017", action = "action_EVENT_GADGET_CREATE_3017" },
	{ config_id = 1003018, name = "SELECT_OPTION_3018", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3018", action = "action_EVENT_SELECT_OPTION_3018" },
	{ config_id = 1003019, name = "ENTER_REGION_3019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3019", action = "action_EVENT_ENTER_REGION_3019" },
	{ config_id = 1003020, name = "ANY_MONSTER_DIE_3020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3020", action = "action_EVENT_ANY_MONSTER_DIE_3020" },
	{ config_id = 1003021, name = "ANY_MONSTER_DIE_3021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3021", action = "action_EVENT_ANY_MONSTER_DIE_3021" },
	{ config_id = 1003025, name = "ANY_MONSTER_DIE_3025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3025", action = "action_EVENT_ANY_MONSTER_DIE_3025" }
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
		gadgets = { 3012, 3013, 3014, 3015, 3016 },
		regions = { 3019 },
		triggers = { "GADGET_CREATE_3017", "SELECT_OPTION_3018", "ENTER_REGION_3019" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 3001, 3002, 3003, 3004, 3005, 3006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3020" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 3009, 3010, 3011, 3022, 3023, 3024 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3025" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 3007, 3008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3021" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_3017(context, evt)
	if 3012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_3017(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250055003, 3012, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3018(context, evt)
	-- 判断是gadgetid 3012 option_id 175
	if 3012 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3018(context, evt)
	-- 删除指定group： 250055003 ；指定config：3012；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 250055003, 3012, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250055003, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3019(context, evt)
	if evt.param1 ~= 3019 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3019(context, evt)
	-- 将configid为 3013 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3013, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3014, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3015 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3015, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3016 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3016, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3020(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3020(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250055003, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3021(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3021(context, evt)
	-- 将configid为 3013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3025(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3025(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250055003, 4)
	
	return 0
end
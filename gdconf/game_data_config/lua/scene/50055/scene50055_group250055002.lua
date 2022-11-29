-- 基础信息
local base_info = {
	group_id = 250055002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 25010201, pos = { x = -32.536, y = 10.625, z = 143.832 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2002, monster_id = 25010501, pos = { x = -35.661, y = 10.641, z = 151.104 }, rot = { x = 0.000, y = 200.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2003, monster_id = 25010601, pos = { x = -40.811, y = 10.661, z = 152.152 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2004, monster_id = 25010701, pos = { x = -45.489, y = 10.639, z = 149.112 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2005, monster_id = 25010201, pos = { x = -45.422, y = 10.639, z = 140.525 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2006, monster_id = 25060101, pos = { x = -39.563, y = 10.639, z = 137.773 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2007, monster_id = 23020101, pos = { x = -35.481, y = 10.644, z = 138.526 }, rot = { x = 0.000, y = 325.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2008, monster_id = 25010401, pos = { x = -32.973, y = 10.645, z = 148.540 }, rot = { x = 0.000, y = 245.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2009, monster_id = 25010201, pos = { x = -43.184, y = 10.647, z = 138.769 }, rot = { x = 0.000, y = 25.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2010, monster_id = 25010201, pos = { x = -46.819, y = 10.643, z = 144.506 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2011, monster_id = 25010301, pos = { x = -32.704, y = 10.659, z = 142.190 }, rot = { x = 0.000, y = 285.000, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2012, gadget_id = 70360001, pos = { x = -39.271, y = 10.819, z = 145.272 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2013, gadget_id = 70290137, pos = { x = -39.221, y = 10.991, z = 130.232 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2014, gadget_id = 70290137, pos = { x = -39.221, y = 11.005, z = 160.270 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2015, gadget_id = 70290137, pos = { x = -54.069, y = 11.006, z = 145.079 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2016, gadget_id = 70290137, pos = { x = -24.153, y = 10.933, z = 145.071 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 2019, shape = RegionShape.CUBIC, size = { x = 25.000, y = 10.000, z = 25.000 }, pos = { x = -38.949, y = 10.838, z = 144.914 } }
}

-- 触发器
triggers = {
	{ config_id = 1002017, name = "GADGET_CREATE_2017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_2017", action = "action_EVENT_GADGET_CREATE_2017" },
	{ config_id = 1002018, name = "SELECT_OPTION_2018", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2018", action = "action_EVENT_SELECT_OPTION_2018" },
	{ config_id = 1002019, name = "ENTER_REGION_2019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2019", action = "action_EVENT_ENTER_REGION_2019" },
	{ config_id = 1002020, name = "ANY_MONSTER_DIE_2020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2020", action = "action_EVENT_ANY_MONSTER_DIE_2020" },
	{ config_id = 1002021, name = "ANY_MONSTER_DIE_2021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2021", action = "action_EVENT_ANY_MONSTER_DIE_2021" }
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
		gadgets = { 2012, 2013, 2014, 2015, 2016 },
		regions = { 2019 },
		triggers = { "GADGET_CREATE_2017", "SELECT_OPTION_2018", "ENTER_REGION_2019" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 2001, 2002, 2003, 2004, 2005, 2006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2020" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 2007, 2008, 2009, 2010, 2011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2021" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_2017(context, evt)
	if 2012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_2017(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250055002, 2012, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2018(context, evt)
	-- 判断是gadgetid 2012 option_id 175
	if 2012 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2018(context, evt)
	-- 删除指定group： 250055002 ；指定config：2012；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 250055002, 2012, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250055002, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2019(context, evt)
	if evt.param1 ~= 2019 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2019(context, evt)
	-- 将configid为 2013 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2013, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2014, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2015 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2015, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2016 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2016, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2020(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2020(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250055002, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2021(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2021(context, evt)
	-- 将configid为 2013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2014 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2014, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 2016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
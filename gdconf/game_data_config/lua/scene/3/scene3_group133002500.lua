-- 基础信息
local base_info = {
	group_id = 133002500
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 500001, monster_id = 21010501, pos = { x = 1987.302, y = 217.063, z = -141.198 }, rot = { x = 0.000, y = 229.619, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, area_id = 4 },
	{ config_id = 500002, monster_id = 21010501, pos = { x = 1978.437, y = 215.303, z = -131.432 }, rot = { x = 0.000, y = 168.040, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, area_id = 4 },
	{ config_id = 500003, monster_id = 21010501, pos = { x = 2008.151, y = 212.775, z = -109.309 }, rot = { x = 0.000, y = 353.301, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, area_id = 4 },
	{ config_id = 500004, monster_id = 21010501, pos = { x = 1996.163, y = 213.661, z = -99.578 }, rot = { x = 0.000, y = 66.116, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, area_id = 4 },
	{ config_id = 500008, monster_id = 21020201, pos = { x = 1986.634, y = 213.120, z = -133.809 }, rot = { x = 0.000, y = 33.626, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 500005, gadget_id = 70300083, pos = { x = 2003.359, y = 208.713, z = -103.543 }, rot = { x = 359.970, y = 27.502, z = 7.235 }, level = 1, area_id = 4 },
	{ config_id = 500006, gadget_id = 70300083, pos = { x = 1981.476, y = 213.723, z = -138.864 }, rot = { x = 358.738, y = 37.527, z = 359.549 }, level = 1, area_id = 4 },
	{ config_id = 500009, gadget_id = 70350201, pos = { x = 1999.084, y = 212.019, z = -122.176 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 4 },
	{ config_id = 500010, gadget_id = 70300088, pos = { x = 1993.384, y = 213.179, z = -131.130 }, rot = { x = 0.000, y = 219.904, z = 0.000 }, level = 1, area_id = 4 },
	{ config_id = 500011, gadget_id = 70300088, pos = { x = 1994.458, y = 213.055, z = -129.833 }, rot = { x = 0.000, y = 218.528, z = 0.000 }, level = 1, area_id = 4 },
	{ config_id = 500012, gadget_id = 70300088, pos = { x = 1995.644, y = 212.911, z = -128.663 }, rot = { x = 0.000, y = 222.712, z = 0.000 }, level = 1, area_id = 4 },
	{ config_id = 500013, gadget_id = 70310001, pos = { x = 1982.579, y = 213.440, z = -133.604 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 4 },
	{ config_id = 500014, gadget_id = 70310001, pos = { x = 1987.306, y = 213.391, z = -136.581 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 4 },
	{ config_id = 500015, gadget_id = 70310001, pos = { x = 1999.435, y = 209.019, z = -104.695 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 4 },
	{ config_id = 500016, gadget_id = 70310001, pos = { x = 2004.073, y = 209.533, z = -107.634 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 4 },
	{ config_id = 500017, gadget_id = 70360163, pos = { x = 1991.014, y = 211.636, z = -120.790 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, persistent = true, area_id = 4 }
}

-- 区域
regions = {
	{ config_id = 500020, shape = RegionShape.SPHERE, radius = 40, pos = { x = 1979.161, y = 214.468, z = -124.805 }, area_id = 4 }
}

-- 触发器
triggers = {
	{ config_id = 1500018, name = "ANY_MONSTER_DIE_500018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_500018", action = "action_EVENT_ANY_MONSTER_DIE_500018" },
	{ config_id = 1500019, name = "GROUP_LOAD_500019", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_500019" },
	{ config_id = 1500020, name = "ENTER_REGION_500020", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_500020", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 500007, gadget_id = 70300083, pos = { x = 1975.976, y = 223.428, z = -169.882 }, rot = { x = 5.053, y = 350.963, z = 11.229 }, level = 1, area_id = 3 }
	}
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
		monsters = { 500001, 500002, 500003, 500004, 500008 },
		gadgets = { 500005, 500006, 500009, 500010, 500011, 500012, 500013, 500014, 500015, 500016 },
		regions = { 500020 },
		triggers = { "ANY_MONSTER_DIE_500018", "GROUP_LOAD_500019", "ENTER_REGION_500020" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_500018(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_500018(context, evt)
	-- 将configid为 500017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 500017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_500019(context, evt)
	-- 创建id为500017的gadget
	if 0 ~= ScriptLib.CreateChannellerSlabCampRewardGadget(context, 500017) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
	
end

-- 触发操作
function action_EVENT_ENTER_REGION_500020(context, evt)
	-- 显示id为137的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,137,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
	
	
end
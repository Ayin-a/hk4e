-- 基础信息
local base_info = {
	group_id = 133302640
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 640007, monster_id = 26090501, pos = { x = -55.609, y = 170.051, z = 2066.141 }, rot = { x = 0.000, y = 333.612, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 },
	{ config_id = 640008, monster_id = 26090501, pos = { x = -57.963, y = 169.871, z = 2066.000 }, rot = { x = 0.000, y = 136.670, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 },
	{ config_id = 640009, monster_id = 26090501, pos = { x = -57.116, y = 170.488, z = 2063.724 }, rot = { x = 0.000, y = 130.219, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 },
	{ config_id = 640028, monster_id = 26090501, pos = { x = -60.291, y = 170.790, z = 2059.908 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 },
	{ config_id = 640029, monster_id = 26090501, pos = { x = -60.096, y = 170.441, z = 2062.422 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 640001, gadget_id = 70310198, pos = { x = -56.625, y = 169.894, z = 2065.205 }, rot = { x = 0.000, y = 4.695, z = 0.000 }, level = 27, state = GadgetState.GearStop, persistent = true, area_id = 20 },
	{ config_id = 640003, gadget_id = 70210101, pos = { x = -59.067, y = 172.429, z = 2055.163 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 20 },
	{ config_id = 640004, gadget_id = 70210101, pos = { x = -59.622, y = 172.535, z = 2053.717 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 20 },
	{ config_id = 640005, gadget_id = 70220103, pos = { x = -68.202, y = 171.987, z = 2084.469 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 640015, gadget_id = 70330218, pos = { x = -50.748, y = 173.087, z = 2042.339 }, rot = { x = 0.000, y = 330.493, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 640016, gadget_id = 70217020, pos = { x = -50.357, y = 173.967, z = 2043.856 }, rot = { x = 0.000, y = 318.286, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 20 }
}

-- 区域
regions = {
	{ config_id = 640006, shape = RegionShape.SPHERE, radius = 15, pos = { x = -59.562, y = 171.239, z = 2060.794 }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1640006, name = "ENTER_REGION_640006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_640006", action = "action_EVENT_ENTER_REGION_640006" },
	{ config_id = 1640010, name = "ANY_MONSTER_DIE_640010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_640010", action = "action_EVENT_ANY_MONSTER_DIE_640010" },
	{ config_id = 1640027, name = "MONSTER_BATTLE_640027", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_640027", action = "action_EVENT_MONSTER_BATTLE_640027" },
	{ config_id = 1640030, name = "ANY_GADGET_DIE_640030", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_640030", action = "action_EVENT_ANY_GADGET_DIE_640030" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 640002, gadget_id = 70217020, pos = { x = -60.573, y = 172.333, z = 2054.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 20 },
		{ config_id = 640011, gadget_id = 70230112, pos = { x = -58.688, y = 169.332, z = 2071.448 }, rot = { x = 1.170, y = 34.540, z = 88.300 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 20 },
		{ config_id = 640012, gadget_id = 70230113, pos = { x = -58.984, y = 169.457, z = 2070.357 }, rot = { x = 3.821, y = 122.532, z = 92.434 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 20 },
		{ config_id = 640013, gadget_id = 70230113, pos = { x = -58.661, y = 169.526, z = 2069.851 }, rot = { x = 359.319, y = 345.601, z = 87.349 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 20 },
		{ config_id = 640014, gadget_id = 70230113, pos = { x = -59.376, y = 169.496, z = 2069.998 }, rot = { x = 2.849, y = 84.551, z = 89.728 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 20 },
		{ config_id = 640017, gadget_id = 70540037, pos = { x = -50.910, y = 172.517, z = 2057.238 }, rot = { x = 0.000, y = 58.868, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 640018, gadget_id = 70500000, pos = { x = -50.863, y = 172.893, z = 2056.815 }, rot = { x = 0.000, y = 58.868, z = 0.000 }, level = 27, point_type = 2049, owner = 640017, area_id = 20 },
		{ config_id = 640019, gadget_id = 70500000, pos = { x = -50.729, y = 173.238, z = 2057.545 }, rot = { x = 0.000, y = 328.890, z = 0.000 }, level = 27, point_type = 2049, owner = 640017, area_id = 20 },
		{ config_id = 640020, gadget_id = 70540037, pos = { x = -57.518, y = 173.476, z = 2044.773 }, rot = { x = 0.000, y = 26.774, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 640021, gadget_id = 70500000, pos = { x = -57.254, y = 173.852, z = 2044.440 }, rot = { x = 0.000, y = 26.774, z = 0.000 }, level = 27, point_type = 2049, owner = 640020, area_id = 20 },
		{ config_id = 640022, gadget_id = 70500000, pos = { x = -57.528, y = 174.198, z = 2045.130 }, rot = { x = 0.000, y = 296.796, z = 0.000 }, level = 27, point_type = 2049, owner = 640020, area_id = 20 },
		{ config_id = 640023, gadget_id = 70290008, pos = { x = -55.297, y = 170.229, z = 2069.594 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 640024, gadget_id = 70500000, pos = { x = -55.297, y = 170.229, z = 2069.594 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3008, owner = 640023, area_id = 20 },
		{ config_id = 640025, gadget_id = 70290008, pos = { x = -52.781, y = 172.805, z = 2059.152 }, rot = { x = 0.000, y = 344.289, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 640026, gadget_id = 70500000, pos = { x = -52.781, y = 172.805, z = 2059.152 }, rot = { x = 0.000, y = 344.289, z = 0.000 }, level = 27, point_type = 3008, owner = 640025, area_id = 20 }
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
		monsters = { },
		gadgets = { 640001, 640003, 640004, 640015 },
		regions = { 640006 },
		triggers = { "ENTER_REGION_640006", "ANY_GADGET_DIE_640030" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 640007, 640008, 640009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_640010", "MONSTER_BATTLE_640027" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_640006(context, evt)
	if evt.param1 ~= 640006 then return false end
	
	-- 判断是区域640006
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 640006 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_640006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302640, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_640010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_640010(context, evt)
	-- 将configid为 640001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 640001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为640005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 640005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_640027(context, evt)
	if 640007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_640027(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 640028, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 640029, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_640030(context, evt)
	if 640015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_640030(context, evt)
	-- 创建id为640016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 640016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
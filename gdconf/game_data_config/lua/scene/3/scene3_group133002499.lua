-- 基础信息
local base_info = {
	group_id = 133002499
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 499001, monster_id = 25010501, pos = { x = 1731.315, y = 231.340, z = -626.444 }, rot = { x = 0.000, y = 209.735, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, pose_id = 9003, area_id = 3 },
	{ config_id = 499002, monster_id = 25010601, pos = { x = 1734.821, y = 231.351, z = -631.863 }, rot = { x = 0.000, y = 254.644, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, pose_id = 9003, area_id = 3 },
	{ config_id = 499003, monster_id = 25070101, pos = { x = 1726.787, y = 231.340, z = -625.683 }, rot = { x = 0.000, y = 172.486, z = 0.000 }, level = 1, drop_tag = "盗宝团", area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 499004, gadget_id = 70350201, pos = { x = 1738.509, y = 239.843, z = -626.951 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 499005, gadget_id = 70300093, pos = { x = 1734.328, y = 231.349, z = -627.545 }, rot = { x = 0.000, y = 68.621, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 499006, gadget_id = 70300093, pos = { x = 1730.488, y = 231.861, z = -642.041 }, rot = { x = 0.000, y = 173.929, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 499007, gadget_id = 70220013, pos = { x = 1737.598, y = 232.163, z = -628.623 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 499008, gadget_id = 70220013, pos = { x = 1735.757, y = 231.780, z = -625.511 }, rot = { x = 0.000, y = 19.990, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 499009, gadget_id = 70360163, pos = { x = 1719.041, y = 231.394, z = -632.624 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, persistent = true, area_id = 3 }
}

-- 区域
regions = {
	{ config_id = 499012, shape = RegionShape.SPHERE, radius = 35, pos = { x = 1730.957, y = 231.340, z = -630.967 }, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1499010, name = "ANY_MONSTER_DIE_499010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_499010", action = "action_EVENT_ANY_MONSTER_DIE_499010" },
	{ config_id = 1499011, name = "GROUP_LOAD_499011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_499011" },
	{ config_id = 1499012, name = "ENTER_REGION_499012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_499012", trigger_count = 0 }
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
		monsters = { 499001, 499002, 499003 },
		gadgets = { 499004, 499005, 499006, 499007, 499008 },
		regions = { 499012 },
		triggers = { "ANY_MONSTER_DIE_499010", "GROUP_LOAD_499011", "ENTER_REGION_499012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_499010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_499010(context, evt)
	-- 将configid为 499009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 499009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_499011(context, evt)
	-- 创建id为500017的gadget
	if 0 ~= ScriptLib.CreateChannellerSlabCampRewardGadget(context, 499009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
	
end

-- 触发操作
function action_EVENT_ENTER_REGION_499012(context, evt)
	-- 显示id为137的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,137,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
	
	
	
end
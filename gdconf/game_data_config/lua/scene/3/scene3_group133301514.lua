-- 基础信息
local base_info = {
	group_id = 133301514
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 514001, monster_id = 25310301, pos = { x = -379.249, y = 213.450, z = 3686.705 }, rot = { x = 0.000, y = 109.565, z = 0.000 }, level = 33, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 9001, area_id = 22 },
	{ config_id = 514006, monster_id = 25310101, pos = { x = -373.159, y = 206.680, z = 3625.240 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 1, area_id = 22 },
	{ config_id = 514008, monster_id = 20060101, pos = { x = -373.181, y = 207.230, z = 3640.942 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "飘浮灵", pose_id = 101, area_id = 22 },
	{ config_id = 514009, monster_id = 20060101, pos = { x = -373.764, y = 206.926, z = 3633.929 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "飘浮灵", pose_id = 101, area_id = 22 },
	{ config_id = 514010, monster_id = 20060701, pos = { x = -377.634, y = 208.584, z = 3638.431 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "飘浮灵", pose_id = 101, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 514002, gadget_id = 70210101, pos = { x = -379.669, y = 213.920, z = 3685.537 }, rot = { x = 0.000, y = 148.757, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 22 },
	{ config_id = 514003, gadget_id = 70210101, pos = { x = -380.830, y = 213.878, z = 3687.244 }, rot = { x = 0.000, y = 148.757, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 22 },
	{ config_id = 514004, gadget_id = 70210101, pos = { x = -379.431, y = 214.179, z = 3688.831 }, rot = { x = 0.000, y = 148.757, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 22 },
	{ config_id = 514005, gadget_id = 70217020, pos = { x = -365.644, y = 207.293, z = 3634.587 }, rot = { x = 0.000, y = 127.992, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 22 },
	{ config_id = 514007, gadget_id = 70330219, pos = { x = -365.500, y = 207.244, z = 3634.823 }, rot = { x = 0.000, y = 277.373, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1514011, name = "ANY_GADGET_DIE_514011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_514011", action = "action_EVENT_ANY_GADGET_DIE_514011", trigger_count = 0 },
	{ config_id = 1514012, name = "GROUP_LOAD_514012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_514012", action = "action_EVENT_GROUP_LOAD_514012", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "default", value = 0, no_refresh = true }
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
		monsters = { 514001, 514006, 514008, 514009, 514010 },
		gadgets = { 514002, 514003, 514004, 514007 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_514011", "GROUP_LOAD_514012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_514011(context, evt)
	if 514007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_514011(context, evt)
	-- 创建id为514005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 514005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将本组内变量名为 "default" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "default", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_514012(context, evt)
	-- 判断变量"default"为1
	if ScriptLib.GetGroupVariableValue(context, "default") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_514012(context, evt)
	-- 创建id为514005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 514005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
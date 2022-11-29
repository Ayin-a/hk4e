-- 基础信息
local base_info = {
	group_id = 133213130
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 130004, monster_id = 24020301, pos = { x = -3793.276, y = 201.669, z = -3085.468 }, rot = { x = 0.000, y = 132.419, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 100, climate_area_id = 2, area_id = 12 },
	{ config_id = 130005, monster_id = 24020401, pos = { x = -3788.961, y = 201.660, z = -3087.508 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 100, climate_area_id = 2, area_id = 12 },
	{ config_id = 130009, monster_id = 24020101, pos = { x = -3788.490, y = 201.723, z = -3083.686 }, rot = { x = 0.000, y = 162.670, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 100, climate_area_id = 2, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 四星大剑图纸
	{ config_id = 130002, gadget_id = 70211132, pos = { x = -3798.895, y = 201.691, z = -3089.413 }, rot = { x = 0.000, y = 67.101, z = 0.000 }, level = 26, chest_drop_id = 2002900, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 130003, gadget_id = 70310010, pos = { x = -3794.894, y = 202.063, z = -3089.721 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
	{ config_id = 130008, shape = RegionShape.SPHERE, radius = 10, pos = { x = -3790.497, y = 201.669, z = -3087.193 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1130001, name = "VARIABLE_CHANGE_130001", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_130001", action = "action_EVENT_VARIABLE_CHANGE_130001" },
	{ config_id = 1130006, name = "GROUP_LOAD_130006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_130006", action = "action_EVENT_GROUP_LOAD_130006" },
	{ config_id = 1130007, name = "GADGET_STATE_CHANGE_130007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_130007", action = "action_EVENT_GADGET_STATE_CHANGE_130007" },
	{ config_id = 1130008, name = "ENTER_REGION_130008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_130008", action = "action_EVENT_ENTER_REGION_130008" }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true }
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
		gadgets = { 130002, 130003 },
		regions = { 130008 },
		triggers = { "VARIABLE_CHANGE_130001", "GROUP_LOAD_130006", "GADGET_STATE_CHANGE_130007", "ENTER_REGION_130008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 130004, 130005, 130009 },
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
function condition_EVENT_VARIABLE_CHANGE_130001(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_130001(context, evt)
	-- 将configid为 130002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 130002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_130006(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_130006(context, evt)
	-- 将configid为 130002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 130002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_130007(context, evt)
	if 130002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_130007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6048, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_130008(context, evt)
	if evt.param1 ~= 130008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_130008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213130, 2)
	
	return 0
end
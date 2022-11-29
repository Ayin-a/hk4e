-- 基础信息
local base_info = {
	group_id = 220102007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 7001, monster_id = 21011002, pos = { x = -49.957, y = 13.346, z = 95.579 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 9003 },
	{ config_id = 7002, monster_id = 21010701, pos = { x = -52.388, y = 13.337, z = 90.736 }, rot = { x = 0.000, y = 218.859, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 7003, monster_id = 21010502, pos = { x = -59.971, y = 13.310, z = 77.914 }, rot = { x = 0.000, y = 299.232, z = 0.000 }, level = 1 },
	{ config_id = 7005, monster_id = 21010201, pos = { x = -60.596, y = 13.300, z = 88.218 }, rot = { x = 0.000, y = 140.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 9012 },
	{ config_id = 7006, monster_id = 21030101, pos = { x = -56.286, y = 13.286, z = 87.620 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 9012 },
	{ config_id = 7025, monster_id = 21010201, pos = { x = -60.728, y = 13.302, z = 82.676 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 9012 },
	{ config_id = 7027, monster_id = 22010101, pos = { x = -58.539, y = 13.291, z = 91.133 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1028 } },
	{ config_id = 7031, monster_id = 21010701, pos = { x = -64.412, y = 13.311, z = 90.609 }, rot = { x = 0.000, y = 145.000, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 7004, gadget_id = 70300107, pos = { x = -58.633, y = 13.312, z = 85.303 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 7007, gadget_id = 70220013, pos = { x = -69.890, y = 13.321, z = 93.633 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7008, gadget_id = 70220025, pos = { x = -65.574, y = 13.445, z = 73.383 }, rot = { x = 90.000, y = 135.000, z = 0.000 }, level = 1 },
	{ config_id = 7009, gadget_id = 70220013, pos = { x = -66.379, y = 13.322, z = 98.019 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7010, gadget_id = 70220026, pos = { x = -88.046, y = 9.137, z = 89.317 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1 },
	{ config_id = 7011, gadget_id = 70220026, pos = { x = -66.586, y = 13.338, z = 96.544 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7012, gadget_id = 70220013, pos = { x = -48.678, y = 13.301, z = 75.791 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7013, gadget_id = 70220013, pos = { x = -64.089, y = 13.401, z = 72.619 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7014, gadget_id = 70220014, pos = { x = -65.244, y = 13.852, z = 72.862 }, rot = { x = 0.000, y = 30.000, z = 90.000 }, level = 1 },
	{ config_id = 7015, gadget_id = 70220026, pos = { x = -49.753, y = 13.294, z = 74.416 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1 },
	{ config_id = 7016, gadget_id = 70220026, pos = { x = -86.712, y = 9.086, z = 89.532 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7017, gadget_id = 70220026, pos = { x = -50.158, y = 13.300, z = 98.295 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1 },
	{ config_id = 7018, gadget_id = 70220013, pos = { x = -47.365, y = 13.285, z = 95.679 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7019, gadget_id = 70220025, pos = { x = -69.033, y = 13.411, z = 93.169 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7020, gadget_id = 70220025, pos = { x = -65.648, y = 13.434, z = 97.116 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7021, gadget_id = 70220026, pos = { x = -48.847, y = 13.295, z = 96.670 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7030, gadget_id = 70211021, pos = { x = -53.394, y = 13.365, z = 96.622 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 11, drop_tag = "战斗高级璃月", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 7029, shape = RegionShape.CUBIC, size = { x = 2.000, y = 10.000, z = 10.000 }, pos = { x = -69.576, y = 16.634, z = 84.133 } }
}

-- 触发器
triggers = {
	{ config_id = 1007026, name = "ANY_MONSTER_DIE_7026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7026", action = "action_EVENT_ANY_MONSTER_DIE_7026" },
	{ config_id = 1007028, name = "ANY_MONSTER_DIE_7028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7028", action = "action_EVENT_ANY_MONSTER_DIE_7028" },
	{ config_id = 1007029, name = "ENTER_REGION_7029", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_7029", action = "action_EVENT_ENTER_REGION_7029" }
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
		monsters = { 7001, 7003, 7005, 7006, 7025 },
		gadgets = { 7004, 7007, 7008, 7009, 7010, 7011, 7012, 7013, 7014, 7015, 7016, 7017, 7018, 7019, 7020, 7021 },
		regions = { 7029 },
		triggers = { "ANY_MONSTER_DIE_7028", "ENTER_REGION_7029" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 7002, 7027, 7031 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_7026" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7026(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7026(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "220102007") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 创建id为7030的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 7030 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7028(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7028(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220102007, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_7029(context, evt)
	if evt.param1 ~= 7029 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_7029(context, evt)
	-- 改变指定group组220102006中， configid为6007的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220102006, 6007, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end
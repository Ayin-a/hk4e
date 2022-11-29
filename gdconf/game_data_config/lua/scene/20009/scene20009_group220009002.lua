-- 基础信息
local base_info = {
	group_id = 220009002
}

-- Trigger变量
local defs = {
	gadget_id_1 = 205,
	gadget_id_2 = 235,
	gadget_id_3 = 236,
	gadget_id_4 = 237,
	gadget_id_5 = 239
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1, monster_id = 21010301, pos = { x = -81.290, y = -15.397, z = 117.627 }, rot = { x = 0.000, y = 245.495, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 56, gadget_id = 70350003, pos = { x = -102.896, y = -12.620, z = 125.774 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 195, gadget_id = 70220013, pos = { x = -74.946, y = -15.585, z = 128.889 }, rot = { x = 6.239, y = 76.614, z = 0.000 }, level = 1 },
	{ config_id = 196, gadget_id = 70220013, pos = { x = -76.636, y = -15.525, z = 130.226 }, rot = { x = 0.000, y = 343.343, z = 358.631 }, level = 1 },
	{ config_id = 201, gadget_id = 70220014, pos = { x = -74.678, y = -15.505, z = 127.274 }, rot = { x = 0.000, y = 227.925, z = 0.000 }, level = 1 },
	{ config_id = 202, gadget_id = 70220014, pos = { x = -85.905, y = -15.496, z = 130.270 }, rot = { x = 0.000, y = 144.043, z = 0.000 }, level = 1 },
	{ config_id = 203, gadget_id = 70220014, pos = { x = -86.730, y = -15.611, z = 128.996 }, rot = { x = 0.000, y = 150.564, z = 0.000 }, level = 1 },
	{ config_id = 205, gadget_id = 70211002, pos = { x = -81.624, y = -15.606, z = 129.374 }, rot = { x = 0.000, y = 180.072, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true },
	{ config_id = 235, gadget_id = 70220007, pos = { x = -92.485, y = -15.483, z = 101.636 }, rot = { x = 0.000, y = 15.024, z = 0.000 }, level = 1 },
	{ config_id = 236, gadget_id = 70220007, pos = { x = -90.272, y = -15.484, z = 99.337 }, rot = { x = 0.000, y = 274.345, z = 0.000 }, level = 1 },
	{ config_id = 237, gadget_id = 70220007, pos = { x = -92.296, y = -10.603, z = 96.805 }, rot = { x = 86.555, y = 175.767, z = 180.000 }, level = 1 },
	{ config_id = 238, gadget_id = 70211001, pos = { x = -94.280, y = -15.052, z = 98.450 }, rot = { x = 0.000, y = 46.422, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", isOneoff = true },
	{ config_id = 239, gadget_id = 70220005, pos = { x = -90.206, y = -15.478, z = 103.334 }, rot = { x = 0.000, y = 33.307, z = 0.000 }, level = 1 },
	{ config_id = 242, gadget_id = 70220013, pos = { x = -72.054, y = -15.484, z = 103.397 }, rot = { x = 0.680, y = 13.127, z = 358.812 }, level = 1 },
	{ config_id = 243, gadget_id = 70220013, pos = { x = -71.111, y = -15.484, z = 105.301 }, rot = { x = 1.069, y = 34.689, z = 359.145 }, level = 1 },
	{ config_id = 244, gadget_id = 70220014, pos = { x = -70.596, y = -15.484, z = 106.722 }, rot = { x = 0.000, y = 144.043, z = 0.000 }, level = 1 },
	{ config_id = 245, gadget_id = 70220014, pos = { x = -73.577, y = -15.405, z = 102.923 }, rot = { x = 0.000, y = 144.043, z = 0.000 }, level = 1 },
	{ config_id = 269, gadget_id = 70220005, pos = { x = -92.488, y = -15.543, z = 103.780 }, rot = { x = 0.000, y = 44.118, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 15, shape = RegionShape.CUBIC, size = { x = 30.000, y = 10.000, z = 40.000 }, pos = { x = -133.848, y = -12.483, z = 129.853 } },
	{ config_id = 21, shape = RegionShape.SPHERE, radius = 5, pos = { x = -127.516, y = -12.221, z = 105.636 } },
	{ config_id = 42, shape = RegionShape.CUBIC, size = { x = 31.010, y = 20.960, z = 3.860 }, pos = { x = -83.849, y = -15.483, z = 106.733 } }
}

-- 触发器
triggers = {
	{ config_id = 1000015, name = "ENTER_REGION_15", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_15", action = "action_EVENT_ENTER_REGION_15", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000021, name = "ENTER_REGION_21", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_21", action = "action_EVENT_ENTER_REGION_21", forbid_guest = false },
	{ config_id = 1000038, name = "ANY_MONSTER_DIE_38", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_38", action = "action_EVENT_ANY_MONSTER_DIE_38" },
	{ config_id = 1000039, name = "TIMER_EVENT_39", event = EventType.EVENT_TIMER_EVENT, source = "start", condition = "", action = "action_EVENT_TIMER_EVENT_39" },
	{ config_id = 1000042, name = "ENTER_REGION_42", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_42", action = "action_EVENT_ENTER_REGION_42", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000043, name = "CLIENT_EXECUTE_43", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElementFlora", condition = "", action = "action_EVENT_CLIENT_EXECUTE_43", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isoff", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1000044, name = "ANY_GADGET_DIE_44", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_44", action = "action_EVENT_ANY_GADGET_DIE_44" }
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
		-- description = suite_1,
		monsters = { 1 },
		gadgets = { 56, 195, 196, 201, 202, 203, 205, 235, 236, 237, 238, 239, 242, 243, 244, 245, 269 },
		regions = { 15, 21, 42 },
		triggers = { "ENTER_REGION_15", "ENTER_REGION_21", "ANY_MONSTER_DIE_38", "TIMER_EVENT_39", "ENTER_REGION_42", "CLIENT_EXECUTE_43" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_15(context, evt)
	if evt.param1 ~= 15 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_15(context, evt)
	-- 将configid为 56 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 56, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "isoff" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isoff", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_21(context, evt)
	if evt.param1 ~= 21 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_21(context, evt)
	-- 将configid为 56 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 56, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_38(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_38(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-101, y=-6, z=124}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
					return -1
		end 
	
	
	
	-- 调用提示id为 10010101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 10010101) then
		return -1
	end
	
	
	-- 延迟4秒后,向groupId为：220009002的对象,请求一次调用,并将string参数："start" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220009002, "start", 4) then
	  return -1
	
	end
	
	-- 解锁目标205
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = defs.gadget_id_1, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_39(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220009007, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_42(context, evt)
	if evt.param1 ~= 42 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"isoff"为1
	if ScriptLib.GetGroupVariableValue(context, "isoff") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_42(context, evt)
	-- 将configid为 56 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 56, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_43(context, evt)
	-- 针对groupid为 220009002 中该config对应的物件进行状态改变操作
	local this_gadget = ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid })
		--ScriptLib.PrintLog("config_id="..this_gadget)
	
		
	  ScriptLib.SetGadgetEnableInteract(context, 220009002, this_gadget, true)
		
	
	return 0
end
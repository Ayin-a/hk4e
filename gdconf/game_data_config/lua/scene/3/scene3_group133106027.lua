-- 基础信息
local base_info = {
	group_id = 133106027
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 27014, monster_id = 26120201, pos = { x = -92.141, y = 173.860, z = 2122.542 }, rot = { x = 0.000, y = 327.160, z = 0.000 }, level = 27, drop_tag = "大蕈兽", pose_id = 201, area_id = 20 },
	{ config_id = 27022, monster_id = 26090501, pos = { x = -99.563, y = 176.486, z = 2150.210 }, rot = { x = 0.000, y = 306.072, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 104, area_id = 20 },
	{ config_id = 27023, monster_id = 26090501, pos = { x = -101.717, y = 176.095, z = 2151.814 }, rot = { x = 0.000, y = 306.072, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 104, area_id = 20 },
	{ config_id = 27031, monster_id = 26090501, pos = { x = -123.322, y = 174.699, z = 2131.114 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 },
	{ config_id = 27032, monster_id = 26090501, pos = { x = -121.478, y = 174.441, z = 2130.605 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 27001, gadget_id = 70310198, pos = { x = -121.009, y = 174.128, z = 2133.858 }, rot = { x = 0.000, y = 25.677, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 27002, gadget_id = 70230110, pos = { x = -103.542, y = 177.933, z = 2130.787 }, rot = { x = 321.703, y = 82.854, z = 218.923 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 20 },
	{ config_id = 27003, gadget_id = 70230110, pos = { x = -104.554, y = 177.407, z = 2131.337 }, rot = { x = 282.370, y = 22.674, z = 255.212 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 20 },
	{ config_id = 27004, gadget_id = 70230110, pos = { x = -102.620, y = 177.473, z = 2130.200 }, rot = { x = 11.954, y = 118.083, z = 170.781 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 20 },
	{ config_id = 27005, gadget_id = 70330199, pos = { x = -92.293, y = 174.054, z = 2122.271 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStop, area_id = 20 },
	{ config_id = 27006, gadget_id = 70330199, pos = { x = -121.662, y = 173.983, z = 2134.031 }, rot = { x = 0.000, y = 86.376, z = 0.000 }, level = 27, state = GadgetState.GearStop, area_id = 20 },
	{ config_id = 27007, gadget_id = 70330199, pos = { x = -101.941, y = 174.524, z = 2147.282 }, rot = { x = 346.076, y = 11.748, z = 358.917 }, level = 27, state = GadgetState.GearStop, area_id = 20 },
	{ config_id = 27008, gadget_id = 70220103, pos = { x = -100.476, y = 188.734, z = 2153.028 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 27012, gadget_id = 70230113, pos = { x = -103.833, y = 176.596, z = 2130.066 }, rot = { x = 37.209, y = 301.466, z = 9.328 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 20 },
	{ config_id = 27016, gadget_id = 70217020, pos = { x = -100.981, y = 174.782, z = 2147.460 }, rot = { x = 13.964, y = 188.036, z = 0.188 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 20 },
	{ config_id = 27024, gadget_id = 70220103, pos = { x = -84.984, y = 187.242, z = 2148.717 }, rot = { x = 0.000, y = 249.322, z = 0.000 }, level = 27, persistent = true, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 左
	{ config_id = 1027009, name = "GADGET_STATE_CHANGE_27009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_27009", action = "action_EVENT_GADGET_STATE_CHANGE_27009" },
	-- 中，默认态创宝箱
	{ config_id = 1027010, name = "GADGET_STATE_CHANGE_27010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_27010", action = "action_EVENT_GADGET_STATE_CHANGE_27010", trigger_count = 0 },
	-- 右，默认态创钩爪
	{ config_id = 1027011, name = "GADGET_STATE_CHANGE_27011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_27011", action = "action_EVENT_GADGET_STATE_CHANGE_27011" },
	-- 中，消亡态杀宝箱
	{ config_id = 1027033, name = "GADGET_STATE_CHANGE_27033", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_27033", action = "action_EVENT_GADGET_STATE_CHANGE_27033", trigger_count = 0 },
	-- 右，消亡态杀草种子
	{ config_id = 1027034, name = "GADGET_STATE_CHANGE_27034", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_27034", action = "action_EVENT_GADGET_STATE_CHANGE_27034", trigger_count = 0 },
	-- 保底
	{ config_id = 1027035, name = "GROUP_LOAD_27035", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_27035", trigger_count = 0 },
	-- 保底
	{ config_id = 1027036, name = "GROUP_LOAD_27036", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_27036", trigger_count = 0 },
	-- 右，默认态创草种子
	{ config_id = 1027037, name = "GADGET_STATE_CHANGE_27037", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_27037", action = "action_EVENT_GADGET_STATE_CHANGE_27037", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 27015, monster_id = 28010304, pos = { x = -98.922, y = 176.922, z = 2151.959 }, rot = { x = 0.000, y = 156.775, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 20 }
	},
	gadgets = {
		{ config_id = 27017, gadget_id = 70540039, pos = { x = -79.491, y = 181.831, z = 2121.544 }, rot = { x = 0.000, y = 322.941, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 27018, gadget_id = 70500000, pos = { x = -79.787, y = 181.339, z = 2121.706 }, rot = { x = 32.266, y = 254.574, z = 296.877 }, level = 27, point_type = 2050, owner = 27017, area_id = 20 },
		{ config_id = 27019, gadget_id = 70500000, pos = { x = -79.303, y = 180.688, z = 2121.964 }, rot = { x = 323.055, y = 53.771, z = 88.715 }, level = 27, point_type = 2050, area_id = 20 },
		{ config_id = 27020, gadget_id = 70540039, pos = { x = -90.341, y = 182.280, z = 2147.973 }, rot = { x = 0.000, y = 236.319, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 27021, gadget_id = 70500000, pos = { x = -90.459, y = 181.898, z = 2147.811 }, rot = { x = 58.599, y = 163.294, z = 317.196 }, level = 27, point_type = 2050, owner = 27020, area_id = 20 },
		{ config_id = 27025, gadget_id = 70290008, pos = { x = -86.889, y = 174.424, z = 2118.333 }, rot = { x = 0.000, y = 339.360, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 27026, gadget_id = 70500000, pos = { x = -88.649, y = 174.424, z = 2118.340 }, rot = { x = 0.000, y = 339.360, z = 0.000 }, level = 27, point_type = 3008, owner = 27025, area_id = 20 },
		{ config_id = 27027, gadget_id = 70290008, pos = { x = -125.020, y = 174.150, z = 2134.083 }, rot = { x = 0.000, y = 210.651, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 27028, gadget_id = 70500000, pos = { x = -125.020, y = 174.150, z = 2134.083 }, rot = { x = 0.000, y = 210.651, z = 0.000 }, level = 27, point_type = 3008, owner = 27027, area_id = 20 },
		{ config_id = 27029, gadget_id = 70290008, pos = { x = -99.159, y = 175.497, z = 2149.116 }, rot = { x = 0.000, y = 190.808, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 27030, gadget_id = 70500000, pos = { x = -99.159, y = 175.497, z = 2149.116 }, rot = { x = 0.000, y = 190.808, z = 0.000 }, level = 27, point_type = 3008, owner = 27029, area_id = 20 }
	},
	triggers = {
		{ config_id = 1027013, name = "ANY_MONSTER_DIE_27013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_27013", action = "action_EVENT_ANY_MONSTER_DIE_27013", trigger_count = 0 }
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
		monsters = { 27022, 27023, 27031, 27032 },
		gadgets = { 27002, 27003, 27004, 27005, 27006, 27007, 27012 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_27009", "GADGET_STATE_CHANGE_27010", "GADGET_STATE_CHANGE_27011", "GADGET_STATE_CHANGE_27033", "GADGET_STATE_CHANGE_27034", "GROUP_LOAD_27035", "GROUP_LOAD_27036", "GADGET_STATE_CHANGE_27037" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_27009(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 27005 ~= evt.param2 then
		return false
	end
	if 1<1 or 1>3 then
	  return false
	end
	if 1 == 1 and 0 ~= evt.param1 then
	  return false
	end
	if 1 == 2 and 200 ~= evt.param1 then
	  return false
	end
	if 1 == 3 and 300 ~= evt.param1 and 301 ~= evt.param1 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_27009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 27014, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_27010(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 27007 ~= evt.param2 then
		return false
	end
	if 1<1 or 1>3 then
	  return false
	end
	if 1 == 1 and 0 ~= evt.param1 then
	  return false
	end
	if 1 == 2 and 200 ~= evt.param1 then
	  return false
	end
	if 1 == 3 and 300 ~= evt.param1 and 301 ~= evt.param1 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_27010(context, evt)
	-- 创建id为27016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 27016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_27011(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 27006 ~= evt.param2 then
		return false
	end
	if 1<1 or 1>3 then
	  return false
	end
	if 1 == 1 and 0 ~= evt.param1 then
	  return false
	end
	if 1 == 2 and 200 ~= evt.param1 then
	  return false
	end
	if 1 == 3 and 300 ~= evt.param1 and 301 ~= evt.param1 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_27011(context, evt)
	-- 创建id为27024的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 27024 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为27008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 27008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_27033(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 27007 ~= evt.param2 then
		return false
	end
	if 3<1 or 3>3 then
	  return false
	end
	if 3 == 1 and 0 ~= evt.param1 then
	  return false
	end
	if 3 == 2 and 200 ~= evt.param1 then
	  return false
	end
	if 3 == 3 and 300 ~= evt.param1 and 301 ~= evt.param1 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_27033(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133106027, EntityType.GADGET, 27016 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_27034(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 27006 ~= evt.param2 then
		return false
	end
	if 3<1 or 3>3 then
	  return false
	end
	if 3 == 1 and 0 ~= evt.param1 then
	  return false
	end
	if 3 == 2 and 200 ~= evt.param1 then
	  return false
	end
	if 3 == 3 and 300 ~= evt.param1 and 301 ~= evt.param1 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_27034(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133106027, EntityType.GADGET, 27001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_27035(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133106027, EntityType.GADGET, 27016 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_27036(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133106027, EntityType.GADGET, 27001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_27037(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 27006 ~= evt.param2 then
		return false
	end
	if 1<1 or 1>3 then
	  return false
	end
	if 1 == 1 and 0 ~= evt.param1 then
	  return false
	end
	if 1 == 2 and 200 ~= evt.param1 then
	  return false
	end
	if 1 == 3 and 300 ~= evt.param1 and 301 ~= evt.param1 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_27037(context, evt)
	-- 创建id为27001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 27001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
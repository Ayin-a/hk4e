-- 基础信息
local base_info = {
	group_id = 220104003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3004, monster_id = 21010901, pos = { x = -32.756, y = 29.156, z = 16.437 }, rot = { x = 0.000, y = 93.139, z = 0.000 }, level = 1, disableWander = true, pose_id = 9002 },
	{ config_id = 3005, monster_id = 21010301, pos = { x = -28.715, y = 29.200, z = 13.987 }, rot = { x = 0.000, y = 287.820, z = 0.000 }, level = 1, disableWander = true, pose_id = 9002 },
	{ config_id = 3006, monster_id = 21010301, pos = { x = -27.575, y = 29.156, z = 16.213 }, rot = { x = 0.000, y = 268.150, z = 0.000 }, level = 1, disableWander = true, pose_id = 9003 },
	{ config_id = 3007, monster_id = 21010301, pos = { x = -28.211, y = 29.214, z = 18.818 }, rot = { x = 0.000, y = 231.924, z = 0.000 }, level = 1, disableWander = true, pose_id = 9002 },
	{ config_id = 3015, monster_id = 21030101, pos = { x = -32.536, y = 29.200, z = 14.736 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 9012 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 左侧门初始关闭
	{ config_id = 3002, gadget_id = 70350005, pos = { x = -28.156, y = 45.521, z = -84.122 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 战斗房间1小怪门
	{ config_id = 3008, gadget_id = 70350005, pos = { x = -46.512, y = 29.214, z = 10.356 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	-- 右侧门初始开启
	{ config_id = 3012, gadget_id = 70350005, pos = { x = -29.052, y = 44.609, z = -51.495 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3014, gadget_id = 70350169, pos = { x = -160.116, y = 1.000, z = -41.414 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3016, gadget_id = 70220013, pos = { x = -18.041, y = 29.302, z = -1.326 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3017, gadget_id = 70220013, pos = { x = -19.503, y = 29.302, z = 0.513 }, rot = { x = 0.000, y = 295.579, z = 0.000 }, level = 1 },
	{ config_id = 3018, gadget_id = 70220013, pos = { x = -21.829, y = 29.156, z = -0.135 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3019, gadget_id = 70220013, pos = { x = -22.616, y = 29.280, z = -1.957 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3020, gadget_id = 70211101, pos = { x = -20.971, y = 29.325, z = -2.343 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 11, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true },
	{ config_id = 3021, gadget_id = 70220026, pos = { x = -20.391, y = 29.401, z = -1.147 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3022, gadget_id = 70220025, pos = { x = -19.420, y = 29.373, z = -1.915 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3023, gadget_id = 70220025, pos = { x = -19.420, y = 29.382, z = -0.056 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3024, gadget_id = 70220025, pos = { x = -17.408, y = 29.324, z = -0.056 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3025, gadget_id = 70220025, pos = { x = -17.408, y = 29.324, z = -1.700 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3026, gadget_id = 70220025, pos = { x = -18.317, y = 29.292, z = -0.839 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3027, gadget_id = 70220025, pos = { x = -18.317, y = 29.292, z = -2.118 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3028, gadget_id = 70220025, pos = { x = -22.769, y = 29.362, z = -1.760 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3029, gadget_id = 70220025, pos = { x = -22.769, y = 29.181, z = 0.054 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3030, gadget_id = 70220025, pos = { x = -20.758, y = 29.156, z = 0.054 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3031, gadget_id = 70220025, pos = { x = -20.758, y = 29.373, z = -1.590 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3032, gadget_id = 70220025, pos = { x = -21.667, y = 29.156, z = -0.729 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3033, gadget_id = 70220025, pos = { x = -21.667, y = 29.280, z = -2.008 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3034, gadget_id = 70220014, pos = { x = -38.108, y = 29.258, z = 26.911 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3035, gadget_id = 70220014, pos = { x = -37.060, y = 29.258, z = 26.911 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3036, gadget_id = 70220014, pos = { x = -42.246, y = 29.210, z = 0.534 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3037, gadget_id = 70220014, pos = { x = -42.238, y = 29.156, z = -0.497 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3038, gadget_id = 70310004, pos = { x = -30.478, y = 29.156, z = 16.026 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3039, gadget_id = 70220013, pos = { x = -20.389, y = 29.141, z = 21.031 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3040, gadget_id = 70220013, pos = { x = -20.186, y = 29.142, z = 22.899 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 3041, gadget_id = 70220026, pos = { x = -21.796, y = 29.141, z = 22.874 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3042, gadget_id = 70220025, pos = { x = -21.653, y = 29.164, z = 21.127 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3043, gadget_id = 70220025, pos = { x = -21.763, y = 29.142, z = 22.942 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3044, gadget_id = 70220025, pos = { x = -19.589, y = 29.143, z = 22.934 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3045, gadget_id = 70220025, pos = { x = -19.752, y = 29.141, z = 21.298 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3046, gadget_id = 70220025, pos = { x = -20.661, y = 29.141, z = 22.159 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3047, gadget_id = 70220025, pos = { x = -20.660, y = 29.141, z = 20.880 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3048, gadget_id = 70220014, pos = { x = -100.749, y = 27.345, z = 31.794 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3049, gadget_id = 70220013, pos = { x = -101.460, y = 27.616, z = 11.278 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3050, gadget_id = 70220013, pos = { x = -99.722, y = 27.439, z = 12.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 11
	{ config_id = 3051, gadget_id = 70211101, pos = { x = -99.950, y = 27.786, z = 10.208 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 11, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true },
	{ config_id = 3052, gadget_id = 70220014, pos = { x = -100.749, y = 27.430, z = 32.844 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3053, gadget_id = 70220014, pos = { x = -93.350, y = 27.647, z = 9.784 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3054, gadget_id = 70220013, pos = { x = -92.645, y = 27.645, z = 12.058 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3055, gadget_id = 70900201, pos = { x = -134.079, y = 3.598, z = -79.605 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 11
	{ config_id = 3057, gadget_id = 70211101, pos = { x = -99.817, y = 27.345, z = 32.472 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 11, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true },
	{ config_id = 3058, gadget_id = 70220013, pos = { x = -100.069, y = 27.345, z = 34.369 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 11
	{ config_id = 3059, gadget_id = 70211101, pos = { x = -66.528, y = 25.331, z = -76.428 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 11, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true },
	{ config_id = 3060, gadget_id = 70220014, pos = { x = -67.113, y = 25.330, z = -77.947 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 11
	{ config_id = 3061, gadget_id = 70211101, pos = { x = -103.797, y = 12.884, z = -76.602 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 11, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true },
	{ config_id = 3062, gadget_id = 70220013, pos = { x = -104.493, y = 12.614, z = -78.159 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3063, gadget_id = 70220014, pos = { x = -66.073, y = 25.441, z = -77.947 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3064, gadget_id = 70350005, pos = { x = -157.704, y = 2.390, z = -12.890 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3066, gadget_id = 70211101, pos = { x = -159.396, y = -8.084, z = 26.612 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 11, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true },
	{ config_id = 3067, gadget_id = 70220014, pos = { x = -159.376, y = -8.257, z = 25.571 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3068, gadget_id = 70220013, pos = { x = -157.772, y = -8.330, z = 26.245 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3069, gadget_id = 70211101, pos = { x = -32.160, y = 32.511, z = -95.566 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 11, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true },
	{ config_id = 3070, gadget_id = 70220014, pos = { x = -33.240, y = 32.629, z = -96.265 }, rot = { x = 0.000, y = 0.000, z = 351.579 }, level = 1 },
	{ config_id = 3071, gadget_id = 70220013, pos = { x = -33.247, y = 32.529, z = -94.462 }, rot = { x = 0.000, y = 20.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 3001, shape = RegionShape.CUBIC, size = { x = 5.000, y = 10.000, z = 30.000 }, pos = { x = -18.254, y = 48.058, z = -68.125 } },
	{ config_id = 3003, shape = RegionShape.CUBIC, size = { x = 25.000, y = 15.000, z = 8.000 }, pos = { x = -22.300, y = 38.860, z = -8.148 } },
	{ config_id = 3010, shape = RegionShape.SPHERE, radius = 10, pos = { x = -65.070, y = 27.353, z = 21.994 } },
	{ config_id = 3013, shape = RegionShape.SPHERE, radius = 5, pos = { x = -26.119, y = 43.818, z = -96.313 } },
	{ config_id = 3056, shape = RegionShape.SPHERE, radius = 5, pos = { x = -132.573, y = 1.932, z = -79.543 } },
	{ config_id = 3065, shape = RegionShape.CUBIC, size = { x = 25.000, y = 15.000, z = 15.000 }, pos = { x = -25.201, y = 46.145, z = -75.737 } },
	{ config_id = 3072, shape = RegionShape.CUBIC, size = { x = 10.000, y = 15.000, z = 15.000 }, pos = { x = -24.917, y = 40.627, z = -112.385 } }
}

-- 触发器
triggers = {
	{ config_id = 1003001, name = "ENTER_REGION_3001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3001", action = "action_EVENT_ENTER_REGION_3001" },
	{ config_id = 1003003, name = "ENTER_REGION_3003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3003", action = "action_EVENT_ENTER_REGION_3003" },
	{ config_id = 1003009, name = "ANY_MONSTER_DIE_3009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3009", action = "action_EVENT_ANY_MONSTER_DIE_3009" },
	{ config_id = 1003010, name = "ENTER_REGION_3010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3010", action = "action_EVENT_ENTER_REGION_3010" },
	{ config_id = 1003011, name = "QUEST_FINISH_3011", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_3011", action = "action_EVENT_QUEST_FINISH_3011" },
	{ config_id = 1003013, name = "ENTER_REGION_3013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3013", action = "action_EVENT_ENTER_REGION_3013" },
	{ config_id = 1003056, name = "ENTER_REGION_3056", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3056", action = "action_EVENT_ENTER_REGION_3056" },
	{ config_id = 1003065, name = "ENTER_REGION_3065", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3065", action = "action_EVENT_ENTER_REGION_3065" },
	{ config_id = 1003072, name = "ENTER_REGION_3072", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3072", action = "action_EVENT_ENTER_REGION_3072" }
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
		monsters = { 3004, 3005, 3006, 3007, 3015 },
		gadgets = { 3002, 3008, 3012, 3014, 3016, 3017, 3018, 3019, 3020, 3021, 3022, 3023, 3024, 3025, 3026, 3027, 3028, 3029, 3030, 3031, 3032, 3033, 3034, 3035, 3036, 3037, 3038, 3039, 3040, 3041, 3042, 3043, 3044, 3045, 3046, 3047, 3048, 3049, 3050, 3051, 3052, 3053, 3054, 3057, 3058, 3059, 3060, 3061, 3062, 3063, 3064, 3066, 3067, 3068, 3069, 3070, 3071 },
		regions = { 3001, 3003, 3010, 3013 },
		triggers = { "ENTER_REGION_3001", "ENTER_REGION_3003", "ANY_MONSTER_DIE_3009", "ENTER_REGION_3010", "QUEST_FINISH_3011", "ENTER_REGION_3013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 3055 },
		regions = { 3056 },
		triggers = { "ENTER_REGION_3056" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 3065, 3072 },
		triggers = { "ENTER_REGION_3065", "ENTER_REGION_3072" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_3001(context, evt)
	if evt.param1 ~= 3001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3001(context, evt)
	-- 调用提示id为 201040101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201040101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-28，43，-53），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-28, y=43, z=-53}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将configid为 3012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3003(context, evt)
	if evt.param1 ~= 3003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3003(context, evt)
	-- 调用提示id为 201040103 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201040103) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将configid为 3012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3009(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220104003) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3009(context, evt)
	-- 将configid为 3008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3010(context, evt)
	if evt.param1 ~= 3010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3010(context, evt)
	-- 调用提示id为 201040105 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201040105) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_3011(context, evt)
	--检查ID为800004的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 800004 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_3011(context, evt)
	-- 调用提示id为 201040108 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201040108) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 改变指定group组220104003中， configid为3014的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220104003, 3014, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220104003, 2)
	
	-- 将configid为 3064 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3064, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟1秒后,向groupId为：220104004的对象,请求一次调用,并将string参数："AA1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220104004, "AA1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3013(context, evt)
	if evt.param1 ~= 3013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3013(context, evt)
	-- 将configid为 3002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3056(context, evt)
	if evt.param1 ~= 3056 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3056(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 3055 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3065(context, evt)
	if evt.param1 ~= 3065 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3065(context, evt)
	-- 将configid为 3002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3072(context, evt)
	if evt.param1 ~= 3072 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3072(context, evt)
	-- 将configid为 3002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
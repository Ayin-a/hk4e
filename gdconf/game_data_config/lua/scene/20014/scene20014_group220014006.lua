-- 基础信息
local base_info = {
	group_id = 220014006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6001, monster_id = 20010901, pos = { x = 191.481, y = 57.000, z = 385.530 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 6002, monster_id = 20011001, pos = { x = 184.232, y = 56.984, z = 382.290 }, rot = { x = 0.000, y = 144.836, z = 0.000 }, level = 1 },
	{ config_id = 6003, monster_id = 20011001, pos = { x = 197.756, y = 57.016, z = 382.158 }, rot = { x = 0.000, y = 242.358, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6004, gadget_id = 70220003, pos = { x = 184.085, y = 56.999, z = 370.321 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6005, gadget_id = 70220003, pos = { x = 181.097, y = 57.016, z = 372.997 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 6006, gadget_id = 70220003, pos = { x = 180.973, y = 57.016, z = 376.778 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 6007, gadget_id = 70220003, pos = { x = 181.159, y = 57.017, z = 382.351 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 6008, gadget_id = 70220003, pos = { x = 181.009, y = 57.016, z = 386.072 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 6009, gadget_id = 70220003, pos = { x = 188.186, y = 57.016, z = 370.310 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6010, gadget_id = 70220003, pos = { x = 192.441, y = 57.016, z = 370.265 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6011, gadget_id = 70220003, pos = { x = 202.471, y = 57.017, z = 373.278 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 6012, gadget_id = 70220003, pos = { x = 202.496, y = 57.016, z = 376.826 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 6013, gadget_id = 70220003, pos = { x = 202.605, y = 57.017, z = 382.491 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 6014, gadget_id = 70220003, pos = { x = 202.626, y = 57.017, z = 386.194 }, rot = { x = 0.000, y = 91.443, z = 0.000 }, level = 1 },
	{ config_id = 6015, gadget_id = 70220003, pos = { x = 196.986, y = 92.500, z = 369.987 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6016, gadget_id = 70220003, pos = { x = 196.346, y = 57.096, z = 370.166 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6017, gadget_id = 70220003, pos = { x = 200.027, y = 56.900, z = 370.286 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6018, gadget_id = 70220003, pos = { x = 183.529, y = 57.017, z = 388.909 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6019, gadget_id = 70220003, pos = { x = 187.650, y = 57.000, z = 388.603 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6020, gadget_id = 70220003, pos = { x = 191.928, y = 57.000, z = 388.453 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6021, gadget_id = 70220003, pos = { x = 195.749, y = 57.000, z = 388.491 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6022, gadget_id = 70220003, pos = { x = 199.343, y = 57.017, z = 388.284 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000007, name = "ANY_MONSTER_DIE_7", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7", action = "action_EVENT_ANY_MONSTER_DIE_7", trigger_count = 0 },
	{ config_id = 1000008, name = "ANY_MONSTER_DIE_8", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_8", action = "action_EVENT_ANY_MONSTER_DIE_8", trigger_count = 0 },
	{ config_id = 1000011, name = "ANY_MONSTER_DIE_11", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_11", action = "action_EVENT_ANY_MONSTER_DIE_11" }
}

-- 变量
variables = {
	{ config_id = 1, name = "RemindCount", value = 0, no_refresh = false }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 6001, 6002, 6003 },
		gadgets = { 6004, 6005, 6006, 6007, 6008, 6009, 6010, 6011, 6012, 6013, 6014, 6015, 6016, 6017, 6018, 6019, 6020, 6021, 6022 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_7", "ANY_MONSTER_DIE_8", "ANY_MONSTER_DIE_11" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7(context, evt)
	--判断死亡怪物的configid是否为 6002
	if evt.param1 ~= 6002 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_8(context, evt)
	--判断死亡怪物的configid是否为 6003
	if evt.param1 ~= 6003 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_11(context, evt)
	--判断死亡怪物的configid是否为 6001
	if evt.param1 ~= 6001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_11(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220014006, suite = 1 }) then
			return -1
		end
	if 0 ~= ScriptLib.ShowReminder(context, 10060701) then
		return -1
	end
	-- 触发镜头注目
		local pos = {x=191, y=57, z=377}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 3, is_force = true, is_broadcast = false }) then
					return -1
				end 
	
	
	ScriptLib.SetWorktopOptionsByGroupId(context, 220014002, 2036, {12})
	
	return 0
end
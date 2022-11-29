-- 基础信息
local base_info = {
	group_id = 133303184
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 184006, monster_id = 28020314, pos = { x = -1698.218, y = 265.137, z = 3129.166 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "走兽", isOneoff = true, area_id = 23 },
	{ config_id = 184007, monster_id = 28020314, pos = { x = -1695.660, y = 265.716, z = 3131.968 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "走兽", isOneoff = true, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 184001, gadget_id = 70330216, pos = { x = -1696.278, y = 254.569, z = 3130.110 }, rot = { x = 4.102, y = 122.646, z = 2.513 }, level = 30, state = GadgetState.GearStop, area_id = 23 },
	{ config_id = 184002, gadget_id = 70230112, pos = { x = -1699.126, y = 258.048, z = 3130.303 }, rot = { x = 61.525, y = 217.651, z = 183.386 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1184005, name = "GADGET_STATE_CHANGE_184005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_184005", action = "action_EVENT_GADGET_STATE_CHANGE_184005" }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 184003, shape = RegionShape.SPHERE, radius = 1, pos = { x = -1695.958, y = 255.710, z = 3130.180 }, area_id = 23 },
		{ config_id = 184004, shape = RegionShape.SPHERE, radius = 2, pos = { x = -1695.902, y = 273.241, z = 3130.101 }, area_id = 23 }
	},
	triggers = {
		{ config_id = 1184003, name = "ENTER_REGION_184003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_184003", action = "action_EVENT_ENTER_REGION_184003" },
		{ config_id = 1184004, name = "ENTER_REGION_184004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_184004", action = "action_EVENT_ENTER_REGION_184004" },
		{ config_id = 1184008, name = "GROUP_LOAD_184008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_184008", action = "action_EVENT_GROUP_LOAD_184008" }
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
		gadgets = { 184001, 184002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_184005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_184005(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 184001 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_184005(context, evt)
	-- 将本组内变量名为 "No_4" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "No_4", 1, 133303153) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 184002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 184002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 184006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 184007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end
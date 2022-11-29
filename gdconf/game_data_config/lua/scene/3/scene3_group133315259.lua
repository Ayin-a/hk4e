-- 基础信息
local base_info = {
	group_id = 133315259
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 259002, gadget_id = 70220103, pos = { x = 297.337, y = 272.353, z = 2213.501 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 259003, gadget_id = 70290543, pos = { x = 297.310, y = 267.695, z = 2213.453 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 20 },
	{ config_id = 259004, gadget_id = 70310214, pos = { x = 318.138, y = 269.767, z = 2220.212 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 259005, gadget_id = 70330197, pos = { x = 334.148, y = 267.194, z = 2207.044 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 259006, gadget_id = 70220103, pos = { x = 334.040, y = 271.860, z = 2207.154 }, rot = { x = 0.000, y = 293.044, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 259007, gadget_id = 70900050, pos = { x = 318.138, y = 269.767, z = 2220.212 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 259008, gadget_id = 70211102, pos = { x = 297.283, y = 267.716, z = 2213.495 }, rot = { x = 0.000, y = 32.960, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 },
	{ config_id = 259009, gadget_id = 70220103, pos = { x = 286.374, y = 258.909, z = 2276.022 }, rot = { x = 0.000, y = 211.873, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 259010, gadget_id = 70220103, pos = { x = 294.310, y = 271.148, z = 2228.085 }, rot = { x = 0.000, y = 259.994, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 259012, gadget_id = 70220103, pos = { x = 290.952, y = 278.041, z = 2261.590 }, rot = { x = 0.000, y = 263.051, z = 0.000 }, level = 27, persistent = true, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 保底
	{ config_id = 1259018, name = "GADGET_STATE_CHANGE_259018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_259018", action = "action_EVENT_GADGET_STATE_CHANGE_259018" },
	-- 激活
	{ config_id = 1259019, name = "GADGET_STATE_CHANGE_259019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_259019", action = "action_EVENT_GADGET_STATE_CHANGE_259019" }
}

-- 变量
variables = {
	{ config_id = 1, name = "unlock", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 259001, gadget_id = 70290484, pos = { x = 297.337, y = 268.111, z = 2213.501 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 }
	},
	triggers = {
		{ config_id = 1259020, name = "GROUP_LOAD_259020", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_259020", action = "action_EVENT_GROUP_LOAD_259020" }
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
		gadgets = { 259003, 259004, 259005, 259006, 259008, 259009, 259010, 259012 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_259018", "GADGET_STATE_CHANGE_259019" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_259018(context, evt)
	if GadgetState.GatherDrop ~= ScriptLib.GetGadgetStateByConfigId(context, 133315259, 259004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_259018(context, evt)
	-- 创建id为259007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 259007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_259019(context, evt)
	if 259007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_259019(context, evt)
	-- 将configid为 259008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 259008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为259002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 259002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
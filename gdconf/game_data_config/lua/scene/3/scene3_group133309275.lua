-- 基础信息
local base_info = {
	group_id = 133309275
}

-- Trigger变量
local defs = {
	point_camera = 275020,
	gadget_lookEntity = 275022,
	look_duration = 3.5
}

-- DEFS_MISCS
local markList = {275001,275002,275003,275006,275007,275008,275009,275010,275011,275012}

local CameraLookSetting = {

    blend_type = 1,

    blend_duration = 2,

    is_force_walk = false,

    is_allow_input = true,

    delay = 0,

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
	[275001] = { config_id = 275001, gadget_id = 70330392, pos = { x = -2962.900, y = 158.700, z = 5416.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 27 },
	-- 会消失地板
	[275002] = { config_id = 275002, gadget_id = 70330392, pos = { x = -2962.900, y = 158.700, z = 5406.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 27 },
	[275003] = { config_id = 275003, gadget_id = 70330392, pos = { x = -2962.900, y = 158.700, z = 5396.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 27 },
	[275004] = { config_id = 275004, gadget_id = 70330314, pos = { x = -2970.415, y = 159.002, z = 5406.129 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 27 },
	[275005] = { config_id = 275005, gadget_id = 70211102, pos = { x = -2962.880, y = 159.002, z = 5414.991 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	[275006] = { config_id = 275006, gadget_id = 70330392, pos = { x = -2962.900, y = 170.700, z = 5416.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	[275007] = { config_id = 275007, gadget_id = 70330392, pos = { x = -2962.900, y = 170.700, z = 5406.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	[275008] = { config_id = 275008, gadget_id = 70330392, pos = { x = -2962.900, y = 170.700, z = 5396.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 27 },
	-- 上楼楼梯
	[275009] = { config_id = 275009, gadget_id = 70330393, pos = { x = -2963.436, y = 161.363, z = 5395.477 }, rot = { x = 0.000, y = 0.000, z = 65.437 }, level = 32, persistent = true, area_id = 27 },
	[275010] = { config_id = 275010, gadget_id = 70330392, pos = { x = -2952.900, y = 165.200, z = 5396.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	[275011] = { config_id = 275011, gadget_id = 70330393, pos = { x = -2952.883, y = 167.668, z = 5405.106 }, rot = { x = 0.000, y = 270.000, z = 57.143 }, level = 32, persistent = true, area_id = 27 },
	[275012] = { config_id = 275012, gadget_id = 70330392, pos = { x = -2952.900, y = 170.700, z = 5416.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	[275014] = { config_id = 275014, gadget_id = 70210101, pos = { x = -2950.693, y = 159.002, z = 5417.742 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 27 },
	[275015] = { config_id = 275015, gadget_id = 70210101, pos = { x = -2975.756, y = 160.065, z = 5395.867 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 27 },
	[275016] = { config_id = 275016, gadget_id = 70210101, pos = { x = -2952.615, y = 159.364, z = 5393.801 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 27 },
	-- 镜头注目点
	[275022] = { config_id = 275022, gadget_id = 70290196, pos = { x = -2962.898, y = 146.982, z = 5406.101 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
	-- 触发注目双层电梯
	[275017] = { config_id = 275017, shape = RegionShape.CUBIC, size = { x = 12.000, y = 15.000, z = 40.000 }, pos = { x = -2962.849, y = 175.309, z = 5406.149 }, area_id = 27 }
}

-- 触发器
triggers = {
	-- 建筑完毕杀死火种 关闭风扇
	{ config_id = 1275013, name = "GADGET_STATE_CHANGE_275013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_275013", action = "action_EVENT_GADGET_STATE_CHANGE_275013" },
	-- 触发注目双层电梯
	{ config_id = 1275017, name = "ENTER_REGION_275017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_275017", action = "action_EVENT_ENTER_REGION_275017" },
	-- 透明地板打开 注目镜头
	{ config_id = 1275018, name = "GADGET_STATE_CHANGE_275018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_275018", action = "action_EVENT_GADGET_STATE_CHANGE_275018" },
	-- 运营埋点
	{ config_id = 1275019, name = "GADGET_STATE_CHANGE_275019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_275019", action = "action_EVENT_GADGET_STATE_CHANGE_275019" }
}

-- 点位
points = {
	[275020] = { config_id = 275020, pos = { x = -2963.021, y = 171.308, z = 5418.815 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 27 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 275021, gadget_id = 70330393, pos = { x = -2972.686, y = 141.125, z = 5402.959 }, rot = { x = 0.000, y = 0.000, z = 65.437 }, level = 32, persistent = true, area_id = 27 }
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
		gadgets = { 275001, 275002, 275003, 275004, 275005, 275006, 275007, 275008, 275009, 275010, 275011, 275012, 275014, 275015, 275016, 275022 },
		regions = { 275017 },
		triggers = { "GADGET_STATE_CHANGE_275013", "ENTER_REGION_275017", "GADGET_STATE_CHANGE_275018", "GADGET_STATE_CHANGE_275019" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
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
function condition_EVENT_GADGET_STATE_CHANGE_275013(context, evt)
	if 275004 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_275013(context, evt)
	-- 将本组内变量名为 "built" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "built", 1, 133309493) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "isOn" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "isOn", 0, 133309279) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_275017(context, evt)
	if evt.param1 ~= 275017 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133309275, 275002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_275017(context, evt)
	-- 将本组内变量名为 "revelation" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "revelation", 1, 133309108) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_275018(context, evt)
	-- 检测config_id为275002的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 275002 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_275018(context, evt)
	LF_PointLook(context)
	
	-- 将configid为 275005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 275005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
		end 
	
	-- 将configid为 275009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 275009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
		end 
	
	-- 卸载指定gadget
	if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133309493, EntityType.GADGET, 493006 ) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
		end
	
	-- 将configid为 275001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 275001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
		end 
	
	-- 将configid为 275003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 275003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_275019(context, evt)
	-- 检测config_id为275004的gadget是否从GadgetState.GearAction2变为GadgetState.Default
	if 275004 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearAction2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_275019(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31001, 3, 70330314) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_1/Transparent_Mark"
require "V3_0/CameraLook"
-- 基础信息
local base_info = {
	group_id = 199002062
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
	{ config_id = 62002, gadget_id = 70360001, pos = { x = 507.819, y = 122.006, z = -107.158 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 }
}

-- 区域
regions = {
	{ config_id = 62001, shape = RegionShape.SPHERE, radius = 120, pos = { x = 521.071, y = 121.050, z = -88.439 }, area_id = 402 }
}

-- 触发器
triggers = {
	{ config_id = 1062001, name = "ENTER_REGION_62001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_62001", action = "action_EVENT_ENTER_REGION_62001" }
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
		monsters = { },
		gadgets = { 62002 },
		regions = { 62001 },
		triggers = { "ENTER_REGION_62001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_62001(context, evt)
	if evt.param1 ~= 62001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	--弹出Reminder提示玩家不处于要求的状态下，状态ID为2代表玩家处于开船状态
	    if 2 ~= ScriptLib.GetPlayerVehicleType(context,context.uid) then
	      if 0 ~= 0 then
	        ScriptLib.ShowReminder(context, 0)
	        return false
	      else
	        return false
	      end
	    else
	      return true
	    end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_62001(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=521,y=120,z=-88}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1111187, pos, 120) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end
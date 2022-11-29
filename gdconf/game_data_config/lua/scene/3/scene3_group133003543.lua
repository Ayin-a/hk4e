-- 基础信息
local base_info = {
	group_id = 133003543
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 543001, monster_id = 26020101, pos = { x = 2096.257, y = 190.575, z = -1674.469 }, rot = { x = 0.000, y = 336.573, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 1, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 543003, gadget_id = 70210106, pos = { x = 2101.444, y = 190.592, z = -1680.776 }, rot = { x = 0.000, y = 338.343, z = 0.000 }, level = 1, drop_tag = "急冻树", showcutscene = true, persistent = true, boss_chest = {monster_config_id=543001, resin=40, life_time=600, take_num=100}, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 543005, shape = RegionShape.SPHERE, radius = 40, pos = { x = 2097.843, y = 190.589, z = -1673.171 }, area_id = 1 },
	{ config_id = 543006, shape = RegionShape.SPHERE, radius = 50, pos = { x = 2095.792, y = 190.593, z = -1673.261 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1543002, name = "ANY_MONSTER_DIE_543002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_543002", action = "action_EVENT_ANY_MONSTER_DIE_543002" },
	{ config_id = 1543005, name = "ENTER_REGION_543005", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_543005", action = "action_EVENT_ENTER_REGION_543005", trigger_count = 0, forbid_guest = false },
	{ config_id = 1543006, name = "LEAVE_REGION_543006", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_543006", action = "action_EVENT_LEAVE_REGION_543006", trigger_count = 0, forbid_guest = false }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 543004, gadget_id = 71000007, pos = { x = 2096.306, y = 190.575, z = -1675.042 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 1 }
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
		monsters = { 543001 },
		gadgets = { },
		regions = { 543005, 543006 },
		triggers = { "ANY_MONSTER_DIE_543002", "ENTER_REGION_543005", "LEAVE_REGION_543006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_543002(context, evt)
	if 543001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_543002(context, evt)
	-- 创建id为543003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 543003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_543005(context, evt)
	if evt.param1 ~= 543005 then return false end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_543005(context, evt)
	     	if context.uid~=0 then
			local small_region={}
			local big_region={}
			for i=1,#regions do
				if regions[i].config_id==543005 then
					small_region=regions[i]
				end
				if regions[i].config_id==543006 then
					big_region=regions[i]
				end
			end
			TrySetPlayerEyePoint(context, small_region, big_region, 0, {0})
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_543006(context, evt)
	if evt.param1 ~= 543006 then return false end
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_543006(context, evt)
	     	if context.uid~=0 then
			ScriptLib.ClearPlayerEyePoint(context, 543005)
		end
	
	return 0
end

require "TD_Lib"
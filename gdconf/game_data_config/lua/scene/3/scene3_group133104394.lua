-- 基础信息
local base_info = {
	group_id = 133104394
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 394004, monster_id = 26020201, pos = { x = 149.762, y = 197.080, z = 954.475 }, rot = { x = 0.000, y = 92.846, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 1, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 394002, gadget_id = 70210106, pos = { x = 159.646, y = 197.142, z = 952.696 }, rot = { x = 0.000, y = 295.500, z = 0.000 }, level = 16, drop_tag = "爆炎树", showcutscene = true, persistent = true, boss_chest = {monster_config_id=394004,resin=40, life_time=600, take_num=100}, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 394005, shape = RegionShape.SPHERE, radius = 45, pos = { x = 152.488, y = 197.101, z = 953.781 }, area_id = 6 },
	{ config_id = 394006, shape = RegionShape.SPHERE, radius = 55, pos = { x = 152.325, y = 197.117, z = 951.961 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1394003, name = "ANY_MONSTER_DIE_394003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_394003", action = "action_EVENT_ANY_MONSTER_DIE_394003" },
	{ config_id = 1394005, name = "ENTER_REGION_394005", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_394005", action = "action_EVENT_ENTER_REGION_394005", trigger_count = 0, forbid_guest = false },
	{ config_id = 1394006, name = "LEAVE_REGION_394006", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_394006", action = "action_EVENT_LEAVE_REGION_394006", trigger_count = 0, forbid_guest = false }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 394001, gadget_id = 71000007, pos = { x = 149.838, y = 197.071, z = 953.382 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 6 }
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
		monsters = { 394004 },
		gadgets = { },
		regions = { 394005, 394006 },
		triggers = { "ANY_MONSTER_DIE_394003", "ENTER_REGION_394005", "LEAVE_REGION_394006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_394003(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133104394) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_394003(context, evt)
	-- 创建id为394002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 394002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_394005(context, evt)
	if evt.param1 ~= 394005 then return false end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_394005(context, evt)
	      	if context.uid~=0 then
			local small_region={}
			local big_region={}
			for i=1,#regions do
				if regions[i].config_id==394005 then
					small_region=regions[i]
				end
				if regions[i].config_id==394006 then
					big_region=regions[i]
				end
			end
			TrySetPlayerEyePoint(context, small_region, big_region, 0, {0})
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_394006(context, evt)
	if evt.param1 ~= 394006 then return false end
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_394006(context, evt)
	     	if context.uid~=0 then
			ScriptLib.ClearPlayerEyePoint(context, 394005)
		end
	
	return 0
end

require "TD_Lib"
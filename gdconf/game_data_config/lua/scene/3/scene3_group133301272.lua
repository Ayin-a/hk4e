-- 基础信息
local base_info = {
	group_id = 133301272
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 272001, monster_id = 26110101, pos = { x = -104.691, y = 78.323, z = 3881.904 }, rot = { x = 0.000, y = 315.991, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 61101 }, pose_id = 101, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 272003, gadget_id = 70210106, pos = { x = -104.634, y = 78.323, z = 3881.186 }, rot = { x = 0.000, y = 263.406, z = 0.000 }, level = 26, drop_tag = "翠翎恐蕈", showcutscene = true, persistent = true, boss_chest = {monster_config_id=272001,resin=40, life_time=600, take_num=100}, area_id = 22 }
}

-- 区域
regions = {
	{ config_id = 272005, shape = RegionShape.SPHERE, radius = 45, pos = { x = -102.304, y = 79.069, z = 3880.255 }, area_id = 22 },
	{ config_id = 272006, shape = RegionShape.SPHERE, radius = 55, pos = { x = -102.468, y = 79.085, z = 3878.434 }, area_id = 22 }
}

-- 触发器
triggers = {
	{ config_id = 1272004, name = "ANY_MONSTER_DIE_272004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_272004", action = "action_EVENT_ANY_MONSTER_DIE_272004" },
	{ config_id = 1272005, name = "ENTER_REGION_272005", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_272005", action = "action_EVENT_ENTER_REGION_272005", trigger_count = 0, forbid_guest = false },
	{ config_id = 1272006, name = "LEAVE_REGION_272006", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_272006", action = "action_EVENT_LEAVE_REGION_272006", trigger_count = 0, forbid_guest = false }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 272002, gadget_id = 71000007, pos = { x = -104.954, y = 79.039, z = 3879.855 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 22 }
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
		monsters = { 272001 },
		gadgets = { },
		regions = { 272005, 272006 },
		triggers = { "ANY_MONSTER_DIE_272004", "ENTER_REGION_272005", "LEAVE_REGION_272006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_272004(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133301272) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_272004(context, evt)
	-- 创建id为272003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 272003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_272005(context, evt)
	if evt.param1 ~= 272005 then return false end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_272005(context, evt)
	      	if context.uid~=0 then
			local small_region={}
			local big_region={}
			for i=1,#regions do
				if regions[i].config_id==272005 then
					small_region=regions[i]
				end
				if regions[i].config_id==272006 then
					big_region=regions[i]
				end
			end
			TrySetPlayerEyePoint(context, small_region, big_region, 0, {0})
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_272006(context, evt)
	if evt.param1 ~= 272006 then return false end
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_272006(context, evt)
	     	if context.uid~=0 then
			ScriptLib.ClearPlayerEyePoint(context, 272005)
		end
	
	return 0
end

require "TD_Lib"
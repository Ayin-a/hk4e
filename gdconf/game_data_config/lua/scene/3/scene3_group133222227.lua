-- 基础信息
local base_info = {
	group_id = 133222227
}

-- DEFS_MISCS
local wakuraConfig =
{    -- 布设时请务必保持上下Rotation相同，需要初始值不同的场合请通过GadgetState控制
    -- Index与Rotation无严格要求，务必锚定红色数字1为第一面，按照逆时钟推算Index即可
    -- 举例 上下为两个六边形，红色数字1为第一面，同时下六边形GadgetState为 203。
    -- 那么upNum从1开始依次计数。downNum也是从1开始依次计数。(在编辑器界面你无法看到下六边形转到4）
    -- 然后根据纸垂特征往右依次填数即可。
    
    groupId = 133222227,
    upConfig = 227003,
    downConfig = 227002,
    operatorConfig = 227004,
    upNum = {1,2,1,3,1,2}, -- 上层纸垂分布
    downNum = {2,1,1,2,3,1}, -- 下层纸垂分布
    careFaceIndex = {1,4,6}, -- 设计者关注的对应面
    targetFaceNum = {4,4,4}, -- 设计者关注的最终面的数量
    SGVList = {"SGV_Light_01","SGV_Light_02","SGV_Light_03","SGV_Light_04","SGV_Light_05","SGV_Light_06"}
}
local stateIndex ={
    [0] = {index = 1,next = 201},
    [201] ={index = 2,next = 202},
    [202] ={index = 3,next = 203},
    [203] ={index = 4,next = 204},
    [204] ={index = 5,next = 901},
    [901] ={index = 6,next = 0}
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
	[227001] = { config_id = 227001, gadget_id = 70360178, pos = { x = -4792.971, y = 512.087, z = -4264.201 }, rot = { x = 354.052, y = 43.487, z = 9.003 }, level = 30, persistent = true, area_id = 14 },
	[227002] = { config_id = 227002, gadget_id = 70360174, pos = { x = -4789.748, y = 512.338, z = -4261.440 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 14 },
	[227003] = { config_id = 227003, gadget_id = 70360173, pos = { x = -4789.748, y = 512.338, z = -4261.440 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearAction2, persistent = true, area_id = 14 },
	[227004] = { config_id = 227004, gadget_id = 70360286, pos = { x = -4789.750, y = 513.937, z = -4261.440 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	[227005] = { config_id = 227005, gadget_id = 70360178, pos = { x = -4792.797, y = 512.466, z = -4259.333 }, rot = { x = 354.165, y = 146.929, z = 351.503 }, level = 30, persistent = true, area_id = 14 },
	[227006] = { config_id = 227006, gadget_id = 70360178, pos = { x = -4786.274, y = 512.316, z = -4259.996 }, rot = { x = 357.113, y = 232.245, z = 10.738 }, level = 30, persistent = true, area_id = 14 }
}

-- 区域
regions = {
	[227008] = { config_id = 227008, shape = RegionShape.SPHERE, radius = 5, pos = { x = -4789.653, y = 512.684, z = -4261.761 }, area_id = 14 }
}

-- 触发器
triggers = {
	{ config_id = 1227007, name = "GADGET_STATE_CHANGE_227007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_227007", action = "action_EVENT_GADGET_STATE_CHANGE_227007", trigger_count = 0 },
	{ config_id = 1227008, name = "ENTER_REGION_227008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	{ config_id = 1227009, name = "QUEST_START_227009", event = EventType.EVENT_QUEST_START, source = "7215801", condition = "", action = "action_EVENT_QUEST_START_227009", trigger_count = 0 }
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
		gadgets = { 227001, 227002, 227003, 227004, 227005, 227006 },
		regions = { 227008 },
		triggers = { "GADGET_STATE_CHANGE_227007", "ENTER_REGION_227008", "QUEST_START_227009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_227007(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133222227, 227004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_227007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7215802") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_227009(context, evt)
	-- 将configid为 227004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 227004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_1/Wakura"
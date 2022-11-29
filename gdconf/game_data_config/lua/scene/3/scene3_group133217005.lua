-- 基础信息
local base_info = {
	group_id = 133217005
}

-- DEFS_MISCS
local wakuraConfig =
{    -- 布设时请务必保持上下Rotation相同，需要初始值不同的场合请通过GadgetState控制
    -- Index与Rotation无严格要求，务必锚定红色数字1为第一面，按照逆时钟推算Index即可
    -- 举例 上下为两个六边形，红色数字1为第一面，同时下六边形GadgetState为 203。
    -- 那么upNum从1开始依次计数。downNum也是从1开始依次计数。(在编辑器界面你无法看到下六边形转到4）
    -- 然后根据纸垂特征往右依次填数即可。
    
    groupId = 133217005,
    upConfig = 5004,
    downConfig = 5003,
    operatorConfig = 5005,
    upNum = {1,2,1,3,1,2}, -- 上层纸垂分布
    downNum = {2,1,1,2,3,1}, -- 下层纸垂分布
    careFaceIndex = {2,3,5}, -- 设计者关注的对应面
    targetFaceNum = {4,4,3}, -- 设计者关注的最终面的数量
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
	[5001] = { config_id = 5001, gadget_id = 70360178, pos = { x = -4501.206, y = 222.681, z = -3994.664 }, rot = { x = 12.751, y = 0.000, z = 9.003 }, level = 30, persistent = true, area_id = 14 },
	[5003] = { config_id = 5003, gadget_id = 70360174, pos = { x = -4501.213, y = 222.308, z = -3989.735 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	[5004] = { config_id = 5004, gadget_id = 70360173, pos = { x = -4501.213, y = 222.308, z = -3989.735 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	[5005] = { config_id = 5005, gadget_id = 70360286, pos = { x = -4501.213, y = 223.038, z = -3989.735 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	[5006] = { config_id = 5006, gadget_id = 70360178, pos = { x = -4497.174, y = 221.842, z = -3992.443 }, rot = { x = 344.317, y = 328.283, z = 355.072 }, level = 30, persistent = true, area_id = 14 },
	[5007] = { config_id = 5007, gadget_id = 70360177, pos = { x = -4501.149, y = 222.093, z = -3984.421 }, rot = { x = 2.252, y = 138.475, z = 9.885 }, level = 30, persistent = true, area_id = 14 }
}

-- 区域
regions = {
	[5008] = { config_id = 5008, shape = RegionShape.SPHERE, radius = 5, pos = { x = -4498.858, y = 221.786, z = -3987.843 }, area_id = 14 }
}

-- 触发器
triggers = {
	{ config_id = 1005002, name = "GADGET_STATE_CHANGE_5002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_5002", action = "action_EVENT_GADGET_STATE_CHANGE_5002", trigger_count = 0 },
	{ config_id = 1005008, name = "ENTER_REGION_5008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	{ config_id = 1005009, name = "QUEST_START_5009", event = EventType.EVENT_QUEST_START, source = "7215523", condition = "", action = "action_EVENT_QUEST_START_5009", trigger_count = 0 }
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
		gadgets = { 5001, 5003, 5004, 5005, 5006, 5007 },
		regions = { 5008 },
		triggers = { "GADGET_STATE_CHANGE_5002", "ENTER_REGION_5008", "QUEST_START_5009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_5002(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133217005, 5005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_5002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7215523") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_5009(context, evt)
	-- 将configid为 5005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_1/Wakura"
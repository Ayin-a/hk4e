-- 基础信息
local base_info = {
	group_id = 133222206
}

-- DEFS_MISCS
local wakuraConfig =
{    -- 布设时请务必保持上下Rotation相同，需要初始值不同的场合请通过GadgetState控制
    -- Index与Rotation无严格要求，务必锚定红色数字1为第一面，按照逆时钟推算Index即可
    -- 举例 上下为两个六边形，红色数字1为第一面，同时下六边形GadgetState为 203。
    -- 那么upNum从1开始依次计数。downNum也是从1开始依次计数。(在编辑器界面你无法看到下六边形转到4）
    -- 然后根据纸垂特征往右依次填数即可。
    
    groupId = 133222206,
    upConfig = 206003,
    downConfig = 206002,
    operatorConfig = 206004,
    upNum = {1,2,1,3,1,2}, -- 上层纸垂分布
    downNum = {2,1,1,2,3,1}, -- 下层纸垂分布
    careFaceIndex = {3,5,6}, -- 设计者关注的对应面
    targetFaceNum = {3,2,4}, -- 设计者关注的最终面的数量
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
	[206001] = { config_id = 206001, gadget_id = 70360177, pos = { x = -4440.859, y = 224.463, z = -4541.180 }, rot = { x = 345.209, y = 315.284, z = 349.976 }, level = 30, persistent = true, area_id = 14 },
	[206002] = { config_id = 206002, gadget_id = 70360174, pos = { x = -4540.604, y = 200.906, z = -4470.994 }, rot = { x = 0.000, y = 10.574, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 14 },
	[206003] = { config_id = 206003, gadget_id = 70360173, pos = { x = -4540.604, y = 200.906, z = -4470.994 }, rot = { x = 0.000, y = 10.574, z = 0.000 }, level = 30, state = GadgetState.GearAction1, persistent = true, area_id = 14 },
	[206004] = { config_id = 206004, gadget_id = 70360286, pos = { x = -4540.657, y = 202.034, z = -4470.651 }, rot = { x = 0.000, y = 355.525, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	[206005] = { config_id = 206005, gadget_id = 70360178, pos = { x = -4552.206, y = 199.766, z = -4461.420 }, rot = { x = 349.870, y = 141.454, z = 0.970 }, level = 30, persistent = true, area_id = 14 },
	[206006] = { config_id = 206006, gadget_id = 70360176, pos = { x = -4538.874, y = 200.592, z = -4462.206 }, rot = { x = 349.029, y = 183.454, z = 4.726 }, level = 30, persistent = true, area_id = 14 }
}

-- 区域
regions = {
	[206008] = { config_id = 206008, shape = RegionShape.SPHERE, radius = 5, pos = { x = -4540.544, y = 200.913, z = -4470.977 }, area_id = 14 }
}

-- 触发器
triggers = {
	{ config_id = 1206007, name = "GADGET_STATE_CHANGE_206007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_206007", action = "action_EVENT_GADGET_STATE_CHANGE_206007", trigger_count = 0 },
	{ config_id = 1206008, name = "ENTER_REGION_206008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	{ config_id = 1206009, name = "QUEST_START_206009", event = EventType.EVENT_QUEST_START, source = "7215605", condition = "", action = "action_EVENT_QUEST_START_206009", trigger_count = 0 }
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
		gadgets = { 206001, 206002, 206003, 206004, 206005, 206006 },
		regions = { 206008 },
		triggers = { "GADGET_STATE_CHANGE_206007", "ENTER_REGION_206008", "QUEST_START_206009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_206007(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133222206, 206004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_206007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7215605") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_206009(context, evt)
	-- 将configid为 206004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 206004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_1/Wakura"
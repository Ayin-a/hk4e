-- 基础信息
local base_info = {
	group_id = 133222218
}

-- DEFS_MISCS
local wakuraConfig =
{    -- 布设时请务必保持上下Rotation相同，需要初始值不同的场合请通过GadgetState控制
    -- Index与Rotation无严格要求，务必锚定红色数字1为第一面，按照逆时钟推算Index即可
    -- 举例 上下为两个六边形，红色数字1为第一面，同时下六边形GadgetState为 203。
    -- 那么upNum从1开始依次计数。downNum也是从1开始依次计数。(在编辑器界面你无法看到下六边形转到4）
    -- 然后根据纸垂特征往右依次填数即可。
    
    groupId = 133222218,
    upConfig = 218003,
    downConfig = 218002,
    operatorConfig = 218004,
    upNum = {1,2,1,3,1,2}, -- 上层纸垂分布
    downNum = {2,1,1,2,3,1}, -- 下层纸垂分布
    careFaceIndex = {2,5,6}, -- 设计者关注的对应面
    targetFaceNum = {3,4,3}, -- 设计者关注的最终面的数量
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
	[218001] = { config_id = 218001, gadget_id = 70360177, pos = { x = -4576.665, y = 417.821, z = -4174.356 }, rot = { x = 353.223, y = 37.350, z = 2.370 }, level = 30, persistent = true, area_id = 14 },
	[218002] = { config_id = 218002, gadget_id = 70360174, pos = { x = -4574.344, y = 417.527, z = -4172.598 }, rot = { x = 0.000, y = 298.078, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 14 },
	[218003] = { config_id = 218003, gadget_id = 70360173, pos = { x = -4574.344, y = 417.527, z = -4172.598 }, rot = { x = 0.000, y = 298.078, z = 0.000 }, level = 30, state = GadgetState.GearAction1, persistent = true, area_id = 14 },
	[218004] = { config_id = 218004, gadget_id = 70360286, pos = { x = -4574.344, y = 418.473, z = -4172.598 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	[218005] = { config_id = 218005, gadget_id = 70360177, pos = { x = -4488.128, y = 417.087, z = -4185.801 }, rot = { x = 29.236, y = 282.308, z = 342.108 }, level = 30, persistent = true, area_id = 14 },
	[218006] = { config_id = 218006, gadget_id = 70360178, pos = { x = -4650.242, y = 436.347, z = -4112.659 }, rot = { x = 3.820, y = 129.250, z = 349.245 }, level = 30, persistent = true, area_id = 14 }
}

-- 区域
regions = {
	[218008] = { config_id = 218008, shape = RegionShape.SPHERE, radius = 5, pos = { x = -4574.286, y = 417.632, z = -4172.670 }, area_id = 14 }
}

-- 触发器
triggers = {
	{ config_id = 1218007, name = "GADGET_STATE_CHANGE_218007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_218007", action = "action_EVENT_GADGET_STATE_CHANGE_218007", trigger_count = 0 },
	{ config_id = 1218008, name = "ENTER_REGION_218008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	{ config_id = 1218009, name = "QUEST_START_218009", event = EventType.EVENT_QUEST_START, source = "7215706", condition = "", action = "action_EVENT_QUEST_START_218009", trigger_count = 0 }
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
		gadgets = { 218001, 218002, 218003, 218004, 218005, 218006 },
		regions = { 218008 },
		triggers = { "GADGET_STATE_CHANGE_218007", "ENTER_REGION_218008", "QUEST_START_218009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_218007(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133222218, 218004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_218007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7215706") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_218009(context, evt)
	-- 将configid为 218004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 218004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_1/Wakura"
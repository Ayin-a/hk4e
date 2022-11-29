-- 基础信息
local base_info = {
	group_id = 220129020
}

-- Trigger变量
local defs = {
	portal = 0
}

-- DEFS_MISCS
function SLC_Active_Portal(context)
	local temp_time=ScriptLib.GetGroupVariableValueByGroup(context, "time", 220129014)

	if temp_time==1 then
	    ScriptLib.CreateGadget(context, { config_id = 20001 })
	end
	if temp_time==2 then
	    ScriptLib.CreateGadget(context, { config_id = 20002 })
	end
	if temp_time==3 then
	    ScriptLib.CreateGadget(context, { config_id = 20003 })
	end
	if temp_time==4 then
	   ScriptLib.CreateGadget(context, { config_id =  20004 })
	end
	if temp_time==5 then
	    ScriptLib.CreateGadget(context, { config_id = 20006 })
	end
	return 0
end

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
	{ config_id = 20001, gadget_id = 70800172, pos = { x = -418.295, y = -45.378, z = 980.479 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 20002, gadget_id = 70800172, pos = { x = -418.295, y = -45.378, z = 980.479 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 20003, gadget_id = 70800172, pos = { x = -418.295, y = -45.378, z = 980.479 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 20004, gadget_id = 70800172, pos = { x = -418.295, y = -45.378, z = 980.479 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 20006, gadget_id = 70800172, pos = { x = -418.295, y = -45.378, z = 980.479 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 20007, gadget_id = 70800140, pos = { x = -419.018, y = -45.216, z = 980.325 }, rot = { x = 0.000, y = 244.469, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
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
		gadgets = { 20007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 20001, 20002, 20003, 20004, 20006 },
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
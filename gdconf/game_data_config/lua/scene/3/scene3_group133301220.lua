-- 基础信息
local base_info = {
	group_id = 133301220
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
	-- 升级用特效
	{ config_id = 220001, gadget_id = 70290512, pos = { x = -61.464, y = 226.804, z = 3256.203 }, rot = { x = 0.000, y = 5.756, z = 0.000 }, level = 27, area_id = 22 },
	-- 交互用
	{ config_id = 220002, gadget_id = 70290511, pos = { x = -64.573, y = 227.223, z = 3264.527 }, rot = { x = 0.000, y = 5.756, z = 0.000 }, level = 27, offering_config = {offering_id = 5}, area_id = 29 }
}

-- 区域
regions = {
	-- 供奉解锁后才创生交互物件
	{ config_id = 220004, shape = RegionShape.SPHERE, radius = 50, pos = { x = -62.495, y = 226.572, z = 3267.091 }, area_id = 29 }
}

-- 触发器
triggers = {
	-- 供奉升级时触发,切201的时候会触发特效
	{ config_id = 1220003, name = "OFFERING_LEVELUP_220003", event = EventType.EVENT_OFFERING_LEVELUP, source = "", condition = "condition_EVENT_OFFERING_LEVELUP_220003", action = "action_EVENT_OFFERING_LEVELUP_220003", trigger_count = 0 },
	-- 供奉解锁后才创生交互物件
	{ config_id = 1220004, name = "ENTER_REGION_220004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_220004", action = "action_EVENT_ENTER_REGION_220004", trigger_count = 0 }
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
		gadgets = { 220001 },
		regions = { },
		triggers = { "OFFERING_LEVELUP_220003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 220001, 220002 },
		regions = { },
		triggers = { "OFFERING_LEVELUP_220003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_OFFERING_LEVELUP_220003(context, evt)
	--[[判断指offeringid为5的供奉物件其供奉等级大于等于1]]
	if evt.param1 ~= 5 or evt.param2 < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_OFFERING_LEVELUP_220003(context, evt)
	-- 将configid为 220001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 220001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_220004(context, evt)
	if evt.param1 ~= 220004 then return false end
	
	local curQuestState = ScriptLib.GetHostQuestState(context,7302515)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 3 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_220004(context, evt)
	-- 创建id为220002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 220002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
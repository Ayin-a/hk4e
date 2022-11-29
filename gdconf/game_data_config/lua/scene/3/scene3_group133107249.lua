-- 基础信息
local base_info = {
	group_id = 133107249
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
	-- 打斗的痕迹
	{ config_id = 249005, gadget_id = 70710690, pos = { x = -788.555, y = 230.511, z = 233.826 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, persistent = true, area_id = 7, is_enable_interact = false },
	-- 燃尽的火堆交互点
	{ config_id = 249006, gadget_id = 70710692, pos = { x = -793.985, y = 231.529, z = 233.870 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, persistent = true, area_id = 7, is_enable_interact = false },
	-- 火堆
	{ config_id = 249007, gadget_id = 70310004, pos = { x = -793.953, y = 231.498, z = 233.823 }, rot = { x = 352.702, y = 303.614, z = 346.616 }, level = 1, drop_id = 1000100, drop_count = 1, persistent = true, area_id = 7 },
	-- 竹席的痕迹
	{ config_id = 249008, gadget_id = 70710691, pos = { x = -792.369, y = 230.938, z = 235.879 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, persistent = true, area_id = 7, is_enable_interact = false },
	-- 果核
	{ config_id = 249009, gadget_id = 70710717, pos = { x = -792.575, y = 233.004, z = 225.721 }, rot = { x = 12.702, y = 356.513, z = 351.422 }, level = 1, drop_id = 1000100, drop_count = 1, persistent = true, area_id = 7, is_enable_interact = false },
	-- 落叶堆
	{ config_id = 249011, gadget_id = 70220001, pos = { x = -792.575, y = 233.004, z = 225.721 }, rot = { x = 12.702, y = 356.513, z = 351.422 }, level = 1, drop_id = 1000100, drop_count = 1, area_id = 7 },
	-- 调查落叶堆
	{ config_id = 249014, gadget_id = 70710682, pos = { x = -792.575, y = 233.004, z = 225.721 }, rot = { x = 12.702, y = 356.513, z = 351.422 }, level = 1, drop_id = 1000100, drop_count = 1, persistent = true, area_id = 7, is_enable_interact = false }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1249001, name = "QUEST_START_249001", event = EventType.EVENT_QUEST_START, source = "1101923", condition = "", action = "action_EVENT_QUEST_START_249001", trigger_count = 0 },
	-- 删掉落叶堆调查点
	{ config_id = 1249002, name = "GADGETTALK_DONE_249002", event = EventType.EVENT_GADGETTALK_DONE, source = "1101929", condition = "", action = "action_EVENT_GADGETTALK_DONE_249002", trigger_count = 0 },
	-- 删掉果核调查点
	{ config_id = 1249003, name = "GADGETTALK_DONE_249003", event = EventType.EVENT_GADGETTALK_DONE, source = "1101926", condition = "", action = "action_EVENT_GADGETTALK_DONE_249003", trigger_count = 0 },
	-- 删掉火堆调查点
	{ config_id = 1249012, name = "GADGETTALK_DONE_249012", event = EventType.EVENT_GADGETTALK_DONE, source = "1101928", condition = "", action = "action_EVENT_GADGETTALK_DONE_249012", trigger_count = 0 },
	-- 落叶堆死亡时，移除调查点
	{ config_id = 1249013, name = "ANY_GADGET_DIE_249013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_249013", action = "action_EVENT_ANY_GADGET_DIE_249013", trigger_count = 0 },
	-- 删掉打斗痕迹调查点
	{ config_id = 1249015, name = "GADGETTALK_DONE_249015", event = EventType.EVENT_GADGETTALK_DONE, source = "1101925", condition = "", action = "action_EVENT_GADGETTALK_DONE_249015", trigger_count = 0 },
	-- 删掉压痕的调查点
	{ config_id = 1249016, name = "GADGETTALK_DONE_249016", event = EventType.EVENT_GADGETTALK_DONE, source = "1101927", condition = "", action = "action_EVENT_GADGETTALK_DONE_249016", trigger_count = 0 },
	-- 如果没有完成过物件对话，则创建果核
	{ config_id = 1249017, name = "ANY_GADGET_DIE_249017", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_249017", action = "action_EVENT_ANY_GADGET_DIE_249017", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Leaftalkfinish", value = 0, no_refresh = true }
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
		gadgets = { 249005, 249006, 249007, 249008, 249011, 249014 },
		regions = { },
		triggers = { "QUEST_START_249001", "GADGETTALK_DONE_249002", "GADGETTALK_DONE_249003", "GADGETTALK_DONE_249012", "ANY_GADGET_DIE_249013", "GADGETTALK_DONE_249015", "GADGETTALK_DONE_249016", "ANY_GADGET_DIE_249017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 249009 },
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

-- 触发操作
function action_EVENT_QUEST_START_249001(context, evt)
	        if 2 == ScriptLib.GetHostQuestState(context,1101925)  then
	                if 0 == ScriptLib.CreateGadget(context, {config_id=249005}) then
	                        ScriptLib.PrintGroupWarning(context, "## YeLan Quest : ReCreate 249005")
	                end
	        end
	
	        if 2 == ScriptLib.GetHostQuestState(context,1101926) and ScriptLib.GetGroupVariableValueByGroup(context, "Leaftalkfinish", 133107249) ~= 0 then
	                if 0 == ScriptLib.CreateGadget(context, {config_id=249009}) then
	                        ScriptLib.PrintGroupWarning(context, "## YeLan Quest : ReCreate 249009")
	                end
	        end
	
	        if 2 == ScriptLib.GetHostQuestState(context,1101926) and 0 == ScriptLib.GetGroupVariableValueByGroup(context, "Leaftalkfinish", 133107249) then
	        -- 卸载已创建的果核
	        if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133107249, EntityType.GADGET, 249009 ) then
	                ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
	        end
	                if 0 == ScriptLib.CreateGadget(context, {config_id=249011}) then
	                        --ScriptLib.PrintGroupWarning(context, "## YeLan Quest : ReCreate 249011")
	                end
	                if 0 == ScriptLib.CreateGadget(context, {config_id=249014}) then
	                        --ScriptLib.PrintGroupWarning(context, "## YeLan Quest : ReCreate 249014")
	                end
	        end
	
	        if 2 == ScriptLib.GetHostQuestState(context,1101927)  then
	                if 0 == ScriptLib.CreateGadget(context, {config_id=249008}) then
	                        ScriptLib.PrintGroupWarning(context, "## YeLan Quest : ReCreate 249008")
	                end
	        end
	
	        if 2 == ScriptLib.GetHostQuestState(context,1101928)  then
	                if 0 == ScriptLib.CreateGadget(context, {config_id=249006}) then
	                        ScriptLib.PrintGroupWarning(context, "## YeLan Quest : ReCreate 249006")
	                end
	        end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGETTALK_DONE_249002(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133107249, EntityType.GADGET, 249014 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将本组内变量名为 "Leaftalkfinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Leaftalkfinish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGETTALK_DONE_249003(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133107249, EntityType.GADGET, 249009 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGETTALK_DONE_249012(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133107249, EntityType.GADGET, 249006 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_249013(context, evt)
	if 249011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_249013(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133107249, EntityType.GADGET, 249014 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGETTALK_DONE_249015(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133107249, EntityType.GADGET, 249005 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGETTALK_DONE_249016(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133107249, EntityType.GADGET, 249008 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_249017(context, evt)
	if 249011 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"Leaftalkfinish"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "Leaftalkfinish", 133107249) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_249017(context, evt)
	-- 创建id为249009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 249009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
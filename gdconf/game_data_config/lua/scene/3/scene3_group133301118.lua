-- 基础信息
local base_info = {
	group_id = 133301118
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
	-- 椅子
	{ config_id = 118001, gadget_id = 71700288, pos = { x = -609.710, y = -134.247, z = 3821.239 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, isOneoff = true, persistent = true, area_id = 25 },
	-- 行囊
	{ config_id = 118002, gadget_id = 71700288, pos = { x = -630.020, y = -132.608, z = 3795.074 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, isOneoff = true, persistent = true, area_id = 25 },
	-- 兰那罗的家
	{ config_id = 118003, gadget_id = 71700288, pos = { x = -605.519, y = -134.342, z = 3801.350 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, isOneoff = true, persistent = true, area_id = 25 },
	{ config_id = 118004, gadget_id = 70710558, pos = { x = -609.462, y = -134.296, z = 3821.300 }, rot = { x = 0.000, y = 307.572, z = 0.000 }, level = 33, area_id = 25 },
	-- 水池
	{ config_id = 118005, gadget_id = 71700288, pos = { x = -617.726, y = -134.680, z = 3790.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, isOneoff = true, persistent = true, area_id = 25 },
	-- 藤蔓
	{ config_id = 118006, gadget_id = 71700288, pos = { x = -646.153, y = -122.861, z = 3782.462 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, isOneoff = true, persistent = true, is_use_point_array = true, area_id = 25 },
	-- 无忧节壁画
	{ config_id = 118007, gadget_id = 71700288, pos = { x = -624.320, y = -133.222, z = 3828.094 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, isOneoff = true, persistent = true, area_id = 25 },
	-- 凋零之森
	{ config_id = 118008, gadget_id = 71700288, pos = { x = -619.882, y = -133.524, z = 3829.747 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, isOneoff = true, persistent = true, area_id = 25 },
	-- 壁画3
	{ config_id = 118009, gadget_id = 71700288, pos = { x = -614.039, y = -133.948, z = 3830.918 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, isOneoff = true, persistent = true, area_id = 25 },
	-- 壁画4
	{ config_id = 118010, gadget_id = 71700288, pos = { x = -607.346, y = -134.041, z = 3830.391 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, isOneoff = true, persistent = true, area_id = 25 },
	-- 壁画5
	{ config_id = 118011, gadget_id = 71700288, pos = { x = -603.431, y = -133.524, z = 3829.251 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, isOneoff = true, persistent = true, area_id = 25 },
	{ config_id = 118022, gadget_id = 70230101, pos = { x = -625.000, y = -130.187, z = 3828.887 }, rot = { x = 356.173, y = 31.006, z = 348.951 }, level = 33, area_id = 25 },
	{ config_id = 118023, gadget_id = 70230102, pos = { x = -620.295, y = -131.082, z = 3831.546 }, rot = { x = 7.374, y = 65.847, z = 359.555 }, level = 33, area_id = 25 },
	{ config_id = 118024, gadget_id = 70230103, pos = { x = -602.425, y = -131.418, z = 3830.948 }, rot = { x = 0.292, y = 116.912, z = 13.168 }, level = 33, area_id = 25 },
	{ config_id = 118025, gadget_id = 70230104, pos = { x = -607.140, y = -131.348, z = 3832.559 }, rot = { x = 354.880, y = 100.711, z = 0.000 }, level = 33, area_id = 25 },
	{ config_id = 118026, gadget_id = 70230105, pos = { x = -614.062, y = -130.848, z = 3831.414 }, rot = { x = 0.526, y = 174.198, z = 359.517 }, level = 33, area_id = 25 },
	{ config_id = 118027, gadget_id = 70290544, pos = { x = -647.458, y = -117.953, z = 3783.051 }, rot = { x = 0.000, y = 69.875, z = 0.000 }, level = 33, persistent = true, area_id = 25 },
	{ config_id = 118031, gadget_id = 70500000, pos = { x = -600.432, y = -133.397, z = 3802.315 }, rot = { x = 350.833, y = 183.396, z = 5.808 }, level = 33, point_type = 2057, area_id = 25 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 椅子对话7303623
	{ config_id = 1118012, name = "QUEST_FINISH_118012", event = EventType.EVENT_QUEST_FINISH, source = "7303623", condition = "", action = "action_EVENT_QUEST_FINISH_118012", trigger_count = 0 },
	-- 行囊与书籍对话7303624
	{ config_id = 1118013, name = "QUEST_FINISH_118013", event = EventType.EVENT_QUEST_FINISH, source = "7303624", condition = "", action = "action_EVENT_QUEST_FINISH_118013", trigger_count = 0 },
	-- 兰那罗的家对话7303625
	{ config_id = 1118014, name = "QUEST_FINISH_118014", event = EventType.EVENT_QUEST_FINISH, source = "7303625", condition = "", action = "action_EVENT_QUEST_FINISH_118014", trigger_count = 0 },
	-- 严严实实的藤蔓对话7303626
	{ config_id = 1118015, name = "QUEST_FINISH_118015", event = EventType.EVENT_QUEST_FINISH, source = "7303626", condition = "", action = "action_EVENT_QUEST_FINISH_118015", trigger_count = 0 },
	-- 水池对话7303627
	{ config_id = 1118016, name = "QUEST_FINISH_118016", event = EventType.EVENT_QUEST_FINISH, source = "7303627", condition = "", action = "action_EVENT_QUEST_FINISH_118016", trigger_count = 0 },
	-- 7303628
	{ config_id = 1118017, name = "QUEST_FINISH_118017", event = EventType.EVENT_QUEST_FINISH, source = "7303628", condition = "", action = "action_EVENT_QUEST_FINISH_118017", trigger_count = 0 },
	-- 7303629
	{ config_id = 1118018, name = "QUEST_FINISH_118018", event = EventType.EVENT_QUEST_FINISH, source = "7303629", condition = "", action = "action_EVENT_QUEST_FINISH_118018", trigger_count = 0 },
	-- 7303630
	{ config_id = 1118019, name = "QUEST_FINISH_118019", event = EventType.EVENT_QUEST_FINISH, source = "7303630", condition = "", action = "action_EVENT_QUEST_FINISH_118019", trigger_count = 0 },
	-- 7303631
	{ config_id = 1118020, name = "QUEST_FINISH_118020", event = EventType.EVENT_QUEST_FINISH, source = "7303631", condition = "", action = "action_EVENT_QUEST_FINISH_118020", trigger_count = 0 },
	-- 7303632
	{ config_id = 1118021, name = "QUEST_FINISH_118021", event = EventType.EVENT_QUEST_FINISH, source = "7303632", condition = "", action = "action_EVENT_QUEST_FINISH_118021", trigger_count = 0 },
	-- 任务开始刷出调查点
	{ config_id = 1118028, name = "QUEST_START_118028", event = EventType.EVENT_QUEST_START, source = "7303622", condition = "", action = "action_EVENT_QUEST_START_118028", trigger_count = 0 },
	-- 任务结束删除调查点
	{ config_id = 1118029, name = "QUEST_FINISH_118029", event = EventType.EVENT_QUEST_FINISH, source = "7303622", condition = "", action = "action_EVENT_QUEST_FINISH_118029", trigger_count = 0 },
	-- 7303620开始藤蔓门打开
	{ config_id = 1118030, name = "QUEST_START_118030", event = EventType.EVENT_QUEST_START, source = "7303620", condition = "", action = "action_EVENT_QUEST_START_118030", trigger_count = 0 },
	-- 7303619开始藤蔓门关闭
	{ config_id = 1118032, name = "QUEST_START_118032", event = EventType.EVENT_QUEST_START, source = "7303619", condition = "", action = "action_EVENT_QUEST_START_118032", trigger_count = 0 },
	-- 7323006完成藤蔓门打开
	{ config_id = 1118033, name = "QUEST_FINISH_118033", event = EventType.EVENT_QUEST_FINISH, source = "7323006", condition = "", action = "action_EVENT_QUEST_FINISH_118033", trigger_count = 0 }
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
		gadgets = { 118004, 118022, 118023, 118024, 118025, 118026, 118027, 118031 },
		regions = { },
		triggers = { "QUEST_FINISH_118012", "QUEST_FINISH_118013", "QUEST_FINISH_118014", "QUEST_FINISH_118015", "QUEST_FINISH_118016", "QUEST_FINISH_118017", "QUEST_FINISH_118018", "QUEST_FINISH_118019", "QUEST_FINISH_118020", "QUEST_FINISH_118021", "QUEST_START_118028", "QUEST_FINISH_118029", "QUEST_START_118030", "QUEST_START_118032", "QUEST_FINISH_118033" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 118001, 118002, 118003, 118005, 118006, 118007, 118008, 118009, 118010, 118011 },
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
function action_EVENT_QUEST_FINISH_118012(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301118, EntityType.GADGET, 118001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_118013(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301118, EntityType.GADGET, 118002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_118014(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301118, EntityType.GADGET, 118003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_118015(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301118, EntityType.GADGET, 118006 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_118016(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301118, EntityType.GADGET, 118005 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_118017(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301118, EntityType.GADGET, 118007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_118018(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301118, EntityType.GADGET, 118009 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_118019(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301118, EntityType.GADGET, 118011 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_118020(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301118, EntityType.GADGET, 118010 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_118021(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301118, EntityType.GADGET, 118008 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_118028(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301118, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_118029(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301118, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_118030(context, evt)
	-- 将configid为 118027 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 118027, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_118032(context, evt)
	-- 将configid为 118027 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 118027, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_118033(context, evt)
	-- 将configid为 118027 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 118027, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
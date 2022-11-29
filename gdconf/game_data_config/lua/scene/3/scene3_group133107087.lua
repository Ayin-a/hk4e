-- 基础信息
local base_info = {
	group_id = 133107087
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
	{ config_id = 87001, gadget_id = 70710096, pos = { x = -654.278, y = 222.396, z = 243.885 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 7 },
	{ config_id = 87002, gadget_id = 70300118, pos = { x = -653.221, y = 221.615, z = 244.904 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 7 },
	{ config_id = 87004, gadget_id = 70710102, pos = { x = -654.005, y = 222.396, z = 244.281 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 7 },
	{ config_id = 87006, gadget_id = 70710100, pos = { x = -657.553, y = 222.396, z = 244.081 }, rot = { x = 0.000, y = 32.617, z = 0.000 }, level = 18, area_id = 7 },
	{ config_id = 87007, gadget_id = 70710135, pos = { x = -654.458, y = 222.397, z = 244.721 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 7 },
	{ config_id = 87008, gadget_id = 70710135, pos = { x = -653.670, y = 222.397, z = 244.545 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 7 },
	{ config_id = 87009, gadget_id = 70710105, pos = { x = -654.469, y = 222.396, z = 244.280 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 7 },
	{ config_id = 87011, gadget_id = 70710101, pos = { x = -657.841, y = 222.396, z = 244.323 }, rot = { x = 0.000, y = 32.617, z = 0.000 }, level = 18, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1087003, name = "QUEST_START_87003", event = EventType.EVENT_QUEST_START, source = "101608", condition = "", action = "action_EVENT_QUEST_START_87003", trigger_count = 0 },
	{ config_id = 1087005, name = "QUEST_FINISH_87005", event = EventType.EVENT_QUEST_FINISH, source = "101608", condition = "", action = "action_EVENT_QUEST_FINISH_87005", trigger_count = 0 },
	{ config_id = 1087010, name = "GROUP_LOAD_87010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_87010", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 87001, 87004, 87006, 87007, 87008, 87009, 87011 },
		regions = { },
		triggers = { "QUEST_START_87003", "QUEST_FINISH_87005", "GROUP_LOAD_87010" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_87003(context, evt)
	-- 创建id为87002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 87002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_87005(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 87002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_87010(context, evt)
	local uid_list = ScriptLib.GetSceneUidList(context)
	if #uid_list ~= 0 and uid_list ~= nil then
	        local avatar_eid = ScriptLib.GetAvatarEntityIdByUid(context, uid_list[1])
	        local _qs = ScriptLib.GetQuestState(context, avatar_eid, 101610)
	        if _qs == 3 then
	                ScriptLib.RefreshGroup(context, {group_id = 133107087, suite = 1})
	        end
	else
	        ScriptLib.PrintContextLog(context, "## LUA_WARNING : Venti Quest Get Player Fail !!!")
	end
	
	return 0
end
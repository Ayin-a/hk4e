-- 基础信息
local base_info = {
	group_id = 133301260
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 260001, monster_id = 24020101, pos = { x = -628.819, y = 123.890, z = 3888.805 }, rot = { x = 0.000, y = 294.180, z = 0.000 }, level = 33, drop_tag = "拟生机关", disableWander = true, pose_id = 100, area_id = 25 },
	{ config_id = 260002, monster_id = 24030101, pos = { x = -603.060, y = 125.377, z = 3930.805 }, rot = { x = 0.000, y = 228.653, z = 0.000 }, level = 33, drop_tag = "遗迹龙兽", disableWander = true, pose_id = 102, area_id = 25, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 260010, monster_id = 21010701, pos = { x = -654.823, y = 128.216, z = 3844.440 }, rot = { x = 0.000, y = 36.494, z = 0.000 }, level = 33, drop_tag = "丘丘人", area_id = 25 },
	{ config_id = 260013, monster_id = 21010701, pos = { x = -632.716, y = 130.232, z = 3847.586 }, rot = { x = 0.000, y = 107.297, z = 0.000 }, level = 33, drop_tag = "丘丘人", area_id = 25 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 260003, gadget_id = 70290596, pos = { x = -567.613, y = 138.995, z = 3949.333 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 25 },
	{ config_id = 260004, gadget_id = 70230110, pos = { x = -565.168, y = 140.220, z = 3952.804 }, rot = { x = 37.401, y = 300.528, z = 158.539 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 25 },
	{ config_id = 260006, gadget_id = 70310191, pos = { x = -605.921, y = 123.233, z = 3916.414 }, rot = { x = 350.081, y = 65.500, z = 15.608 }, level = 33, area_id = 25 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 7303635完成刷灭
	{ config_id = 1260005, name = "QUEST_FINISH_260005", event = EventType.EVENT_QUEST_FINISH, source = "7303635", condition = "", action = "action_EVENT_QUEST_FINISH_260005", trigger_count = 0 },
	-- 7323003开始变亮
	{ config_id = 1260009, name = "QUEST_START_260009", event = EventType.EVENT_QUEST_START, source = "7323003", condition = "", action = "action_EVENT_QUEST_START_260009", trigger_count = 0 },
	-- 7323003完成闪烁
	{ config_id = 1260012, name = "QUEST_FINISH_260012", event = EventType.EVENT_QUEST_FINISH, source = "7323003", condition = "", action = "action_EVENT_QUEST_FINISH_260012", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 260008, gadget_id = 70310191, pos = { x = -566.784, y = 136.189, z = 3950.793 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 25 },
		{ config_id = 260011, gadget_id = 70310191, pos = { x = -566.080, y = 138.916, z = 3947.345 }, rot = { x = 0.000, y = 146.119, z = 0.000 }, level = 33, area_id = 25 }
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
		monsters = { 260001, 260002, 260010, 260013 },
		gadgets = { 260003, 260004, 260006 },
		regions = { },
		triggers = { "QUEST_FINISH_260005", "QUEST_START_260009", "QUEST_FINISH_260012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function action_EVENT_QUEST_FINISH_260005(context, evt)
	-- 将configid为 260004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 260004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_260009(context, evt)
	-- 将configid为 260004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 260004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_260012(context, evt)
	-- 将configid为 260004 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 260004, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_0/DeathFieldStandard"
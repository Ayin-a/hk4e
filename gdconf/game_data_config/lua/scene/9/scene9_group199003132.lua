-- 基础信息
local base_info = {
	group_id = 199003132
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
	[132005] = { config_id = 132005, gadget_id = 70350004, pos = { x = -702.868, y = 108.440, z = 406.503 }, rot = { x = 22.836, y = 268.402, z = 270.426 }, level = 20, persistent = true, area_id = 403 },
	[132006] = { config_id = 132006, gadget_id = 70220038, pos = { x = -709.198, y = 109.524, z = 399.688 }, rot = { x = 0.000, y = 83.025, z = 0.000 }, level = 20, isOneoff = true, persistent = true, area_id = 403 },
	[132007] = { config_id = 132007, gadget_id = 70210101, pos = { x = -699.844, y = 108.271, z = 401.240 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, chest_drop_id = 1050215, drop_count = 1, isOneoff = true, persistent = true, area_id = 403 },
	[132008] = { config_id = 132008, gadget_id = 70310392, pos = { x = -700.222, y = 107.866, z = 401.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, persistent = true, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1132009, name = "GROUP_LOAD_132009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_132009", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 132001, gadget_id = 70310390, pos = { x = -700.813, y = 106.475, z = 425.289 }, rot = { x = 355.756, y = 148.770, z = 0.000 }, level = 20, state = GadgetState.GearStop, area_id = 403 },
		{ config_id = 132002, gadget_id = 70310392, pos = { x = -699.550, y = 106.894, z = 428.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, mark_flag = 1, area_id = 403 },
		{ config_id = 132003, gadget_id = 70310392, pos = { x = -702.355, y = 106.275, z = 424.488 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, mark_flag = 1, area_id = 403 },
		{ config_id = 132004, gadget_id = 70310392, pos = { x = -701.063, y = 107.450, z = 414.655 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, mark_flag = 1, area_id = 403 }
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
	end_suite = 2,
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
		gadgets = { 132005, 132006, 132007, 132008 },
		regions = { },
		triggers = { "GROUP_LOAD_132009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 132006, 132007, 132008 },
		regions = { },
		triggers = { "GROUP_LOAD_132009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_132009(context, evt)
	if ScriptLib.GetGroupVariableValueByGroup(context, "door", 199003100) == 1 then
	 ScriptLib.RefreshGroup(context, { group_id = 199003132, suite = 2 })
		end
	
	return 0
end
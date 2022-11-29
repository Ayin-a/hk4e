-- 基础信息
local base_info = {
	group_id = 133301143
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 143001, monster_id = 22050201, pos = { x = -684.935, y = 134.784, z = 3902.834 }, rot = { x = 0.000, y = 3.548, z = 0.000 }, level = 33, drop_tag = "兽境猎犬", pose_id = 101, area_id = 25 },
	{ config_id = 143002, monster_id = 24010101, pos = { x = -619.659, y = 134.991, z = 3963.051 }, rot = { x = 0.000, y = 292.540, z = 0.000 }, level = 33, drop_tag = "遗迹守卫", pose_id = 101, area_id = 25 },
	{ config_id = 143004, monster_id = 22050101, pos = { x = -686.656, y = 134.608, z = 3908.266 }, rot = { x = 0.000, y = 8.237, z = 0.000 }, level = 33, drop_tag = "兽境猎犬", pose_id = 101, area_id = 25 },
	{ config_id = 143005, monster_id = 22040201, pos = { x = -685.926, y = 134.901, z = 3896.509 }, rot = { x = 0.000, y = 37.690, z = 0.000 }, level = 33, drop_tag = "兽境幼兽", pose_id = 101, area_id = 25 },
	{ config_id = 143006, monster_id = 22040201, pos = { x = -688.808, y = 135.256, z = 3899.876 }, rot = { x = 0.000, y = 8.237, z = 0.000 }, level = 33, drop_tag = "兽境幼兽", pose_id = 101, area_id = 25 },
	{ config_id = 143007, monster_id = 21010701, pos = { x = -767.205, y = 149.956, z = 4018.423 }, rot = { x = 0.000, y = 201.764, z = 0.000 }, level = 33, drop_tag = "丘丘人", area_id = 25 },
	{ config_id = 143008, monster_id = 21010701, pos = { x = -768.335, y = 149.214, z = 4000.537 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "丘丘人", area_id = 25 },
	{ config_id = 143009, monster_id = 21010501, pos = { x = -759.603, y = 147.946, z = 4019.643 }, rot = { x = 0.000, y = 204.757, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 25 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 143010, gadget_id = 70310004, pos = { x = -761.617, y = 148.557, z = 4018.178 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 25 },
	{ config_id = 143011, gadget_id = 70210101, pos = { x = -772.327, y = 151.018, z = 4012.452 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 25 },
	{ config_id = 143012, gadget_id = 70210101, pos = { x = -756.136, y = 149.370, z = 4016.041 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 25 },
	{ config_id = 143013, gadget_id = 70210101, pos = { x = -771.512, y = 151.075, z = 4015.062 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 25 },
	{ config_id = 143014, gadget_id = 70210101, pos = { x = -761.853, y = 149.100, z = 4020.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 25 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1143003, name = "QUEST_FINISH_143003", event = EventType.EVENT_QUEST_FINISH, source = "7303709", condition = "", action = "action_EVENT_QUEST_FINISH_143003", trigger_count = 0 }
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
	suite = 2,
	end_suite = 1,
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
		monsters = { 143001, 143002, 143004, 143005, 143006, 143007, 143008, 143009 },
		gadgets = { 143010, 143011, 143012, 143013, 143014 },
		regions = { },
		triggers = { "QUEST_FINISH_143003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_FINISH_143003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_143003(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133301143, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

require "V3_0/DeathFieldStandard"
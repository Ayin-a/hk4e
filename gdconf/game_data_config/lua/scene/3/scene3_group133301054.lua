-- 基础信息
local base_info = {
	group_id = 133301054
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 54001, monster_id = 21030201, pos = { x = -902.639, y = 241.252, z = 3935.805 }, rot = { x = 0.000, y = 306.266, z = 0.000 }, level = 33, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 23 },
	{ config_id = 54004, monster_id = 21011201, pos = { x = -907.551, y = 241.766, z = 3936.314 }, rot = { x = 0.000, y = 93.130, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 23 },
	{ config_id = 54005, monster_id = 21020301, pos = { x = -907.297, y = 242.111, z = 3939.375 }, rot = { x = 0.000, y = 132.454, z = 0.000 }, level = 33, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 23 },
	{ config_id = 54006, monster_id = 21010701, pos = { x = -918.370, y = 242.493, z = 3933.635 }, rot = { x = 0.000, y = 152.462, z = 0.000 }, level = 33, drop_tag = "丘丘人", area_id = 23 },
	{ config_id = 54007, monster_id = 21011201, pos = { x = -925.082, y = 244.570, z = 3933.281 }, rot = { x = 0.000, y = 253.739, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 23 },
	{ config_id = 54008, monster_id = 21011201, pos = { x = -904.483, y = 242.026, z = 3940.613 }, rot = { x = 0.000, y = 158.195, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 54002, gadget_id = 70211012, pos = { x = -909.651, y = 250.078, z = 3955.612 }, rot = { x = 0.000, y = 180.339, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 54009, gadget_id = 70330197, pos = { x = -910.133, y = 243.109, z = 3950.767 }, rot = { x = 0.000, y = 337.554, z = 0.000 }, level = 33, area_id = 23 },
	{ config_id = 54010, gadget_id = 70220103, pos = { x = -910.531, y = 246.759, z = 3950.665 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23 },
	{ config_id = 54011, gadget_id = 70310010, pos = { x = -926.158, y = 244.775, z = 3933.041 }, rot = { x = 0.000, y = 102.296, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 54012, gadget_id = 70220013, pos = { x = -924.509, y = 249.125, z = 3955.724 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 54013, gadget_id = 70220013, pos = { x = -929.505, y = 249.295, z = 3946.781 }, rot = { x = 0.000, y = 64.032, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 54014, gadget_id = 70220026, pos = { x = -923.010, y = 249.126, z = 3956.023 }, rot = { x = 0.000, y = 284.354, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 54015, gadget_id = 70220014, pos = { x = -893.367, y = 242.123, z = 3944.404 }, rot = { x = 0.000, y = 98.262, z = 0.000 }, level = 33, area_id = 23 },
	{ config_id = 54016, gadget_id = 70220014, pos = { x = -893.067, y = 242.123, z = 3945.387 }, rot = { x = 0.000, y = 317.100, z = 0.000 }, level = 33, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1054003, name = "ANY_MONSTER_DIE_54003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_54003", action = "action_EVENT_ANY_MONSTER_DIE_54003" }
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
		monsters = { 54001, 54004, 54005, 54006, 54007, 54008 },
		gadgets = { 54002, 54009, 54010, 54011, 54012, 54013, 54014, 54015, 54016 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_54003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_54003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_54003(context, evt)
	-- 将configid为 54002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end
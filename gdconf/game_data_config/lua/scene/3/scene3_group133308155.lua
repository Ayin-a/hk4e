-- 基础信息
local base_info = {
	group_id = 133308155
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 155001, monster_id = 25210202, pos = { x = -1901.585, y = 285.592, z = 4481.070 }, rot = { x = 0.000, y = 63.147, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, pose_id = 9505, area_id = 26 },
	{ config_id = 155002, monster_id = 25210502, pos = { x = -1894.235, y = 285.562, z = 4477.933 }, rot = { x = 0.000, y = 351.065, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, area_id = 26 },
	{ config_id = 155003, monster_id = 25210403, pos = { x = -1897.752, y = 285.293, z = 4488.530 }, rot = { x = 0.000, y = 118.666, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, area_id = 26 },
	-- 这个设置了一个高警戒度
	{ config_id = 155005, monster_id = 25210201, pos = { x = -1905.053, y = 290.202, z = 4477.712 }, rot = { x = 0.000, y = 53.138, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 155004, gadget_id = 70211151, pos = { x = -1891.446, y = 285.538, z = 4474.133 }, rot = { x = 2.504, y = 5.207, z = 357.859 }, level = 26, chest_drop_id = 21910109, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 155008, gadget_id = 70210101, pos = { x = -1865.574, y = 282.147, z = 4485.942 }, rot = { x = 0.000, y = 268.732, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 155009, gadget_id = 70210101, pos = { x = -1894.927, y = 285.704, z = 4474.824 }, rot = { x = 40.992, y = 6.430, z = 17.091 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 26 },
	{ config_id = 155010, gadget_id = 70330397, pos = { x = -1866.065, y = 281.247, z = 4480.520 }, rot = { x = 354.671, y = 359.751, z = 6.238 }, level = 32, state = GadgetState.GearStart, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 155011, gadget_id = 70310006, pos = { x = -1891.471, y = 285.424, z = 4479.009 }, rot = { x = 2.099, y = 359.961, z = 357.559 }, level = 32, state = GadgetState.GearStart, area_id = 26 },
	{ config_id = 155012, gadget_id = 70220051, pos = { x = -1903.043, y = 285.592, z = 4479.544 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 155013, gadget_id = 70220052, pos = { x = -1903.931, y = 285.612, z = 4481.903 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 155014, gadget_id = 70210101, pos = { x = -1887.630, y = 285.031, z = 4483.446 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 26 },
	{ config_id = 155015, gadget_id = 70220048, pos = { x = -1894.398, y = 285.571, z = 4472.156 }, rot = { x = 2.647, y = 314.859, z = 354.028 }, level = 32, area_id = 26 },
	{ config_id = 155016, gadget_id = 70900386, pos = { x = -1905.055, y = 286.768, z = 4480.409 }, rot = { x = 4.635, y = 78.548, z = 356.749 }, level = 26, drop_tag = "书页章节1须弥", isOneoff = true, persistent = true, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1155006, name = "ANY_MONSTER_DIE_155006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_155006", action = "action_EVENT_ANY_MONSTER_DIE_155006" },
	{ config_id = 1155007, name = "MONSTER_BATTLE_155007", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_155007", action = "action_EVENT_MONSTER_BATTLE_155007" }
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
		monsters = { 155001 },
		gadgets = { 155004, 155008, 155009, 155010, 155011, 155012, 155013, 155014, 155015, 155016 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_155006", "MONSTER_BATTLE_155007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 155002, 155003, 155005 },
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

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_155006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_155006(context, evt)
	-- 将configid为 155004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 155004, GadgetState.Default) then
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

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_155007(context, evt)
	if 155001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_155007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308155, 2)
	
	return 0
end
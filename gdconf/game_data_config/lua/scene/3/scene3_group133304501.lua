-- 基础信息
local base_info = {
	group_id = 133304501
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 501001, monster_id = 20010601, pos = { x = -1063.346, y = 223.655, z = 2331.025 }, rot = { x = 0.000, y = 307.498, z = 0.000 }, level = 27, drop_tag = "大史莱姆", area_id = 24 },
	{ config_id = 501004, monster_id = 20010701, pos = { x = -1068.417, y = 226.971, z = 2340.653 }, rot = { x = 0.000, y = 121.939, z = 0.000 }, level = 27, drop_tag = "大史莱姆", area_id = 21 },
	{ config_id = 501005, monster_id = 26090401, pos = { x = -1073.647, y = 222.312, z = 2329.972 }, rot = { x = 0.000, y = 294.830, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 104, area_id = 21 },
	{ config_id = 501009, monster_id = 26010301, pos = { x = -1070.029, y = 220.791, z = 2325.164 }, rot = { x = 0.000, y = 358.835, z = 0.000 }, level = 27, drop_tag = "骗骗花", area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 501002, gadget_id = 70211012, pos = { x = -1077.071, y = 229.531, z = 2334.626 }, rot = { x = 9.544, y = 89.771, z = 3.708 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 },
	{ config_id = 501006, gadget_id = 70330216, pos = { x = -1074.504, y = 222.683, z = 2331.033 }, rot = { x = 0.000, y = 323.417, z = 0.000 }, level = 27, area_id = 21 },
	{ config_id = 501007, gadget_id = 70330216, pos = { x = -1064.734, y = 221.996, z = 2333.194 }, rot = { x = 0.000, y = 215.164, z = 0.000 }, level = 27, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1501003, name = "ANY_MONSTER_DIE_501003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_501003", action = "action_EVENT_ANY_MONSTER_DIE_501003", trigger_count = 0 },
	-- 入战刷骗骗花
	{ config_id = 1501008, name = "MONSTER_BATTLE_501008", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_501008" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 501010, monster_id = 20011201, pos = { x = -1066.176, y = 221.882, z = 2334.132 }, rot = { x = 0.000, y = 125.640, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 21 },
		{ config_id = 501011, monster_id = 26090701, pos = { x = -1070.219, y = 223.586, z = 2336.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 21 }
	},
	triggers = {
		{ config_id = 1501012, name = "GROUP_LOAD_501012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_501012", trigger_count = 0 }
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
		monsters = { 501001, 501004, 501005 },
		gadgets = { 501002, 501006, 501007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_501003", "MONSTER_BATTLE_501008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 501009 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
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

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_501003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_501003(context, evt)
	-- 将configid为 501002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 501002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_501008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304501, 2)
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 133301010
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 10005, monster_id = 26120201, pos = { x = -1016.168, y = 217.225, z = 2799.934 }, rot = { x = 0.000, y = 260.556, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 24 },
	{ config_id = 10006, monster_id = 26090501, pos = { x = -1022.047, y = 217.493, z = 2797.141 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 24 },
	{ config_id = 10007, monster_id = 26090501, pos = { x = -1022.194, y = 217.684, z = 2801.187 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 10002, gadget_id = 70211002, pos = { x = -1028.869, y = 217.615, z = 2803.615 }, rot = { x = 1.215, y = 199.841, z = 356.636 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1010003, name = "ANY_MONSTER_DIE_10003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_10003", action = "action_EVENT_ANY_MONSTER_DIE_10003", trigger_count = 0 },
	{ config_id = 1010008, name = "QUEST_FINISH_10008", event = EventType.EVENT_QUEST_FINISH, source = "7300233", condition = "", action = "action_EVENT_QUEST_FINISH_10008" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 10001, monster_id = 26090501, pos = { x = -1023.848, y = 217.818, z = 2804.670 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 24 },
		{ config_id = 10004, monster_id = 26090501, pos = { x = -1023.551, y = 217.331, z = 2792.729 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 24 }
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
		gadgets = { },
		regions = { },
		triggers = { "QUEST_FINISH_10008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 10005, 10006, 10007 },
		gadgets = { 10002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_10003", "QUEST_FINISH_10008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_10003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10003(context, evt)
	-- 将configid为 10002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 10002, GadgetState.Default) then
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
function action_EVENT_QUEST_FINISH_10008(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301010, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end
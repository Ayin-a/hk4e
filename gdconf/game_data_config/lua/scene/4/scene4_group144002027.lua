-- 基础信息
local base_info = {
	group_id = 144002027
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 27001, monster_id = 21010201, pos = { x = 428.567, y = 135.524, z = -467.586 }, rot = { x = 11.514, y = 222.258, z = 351.466 }, level = 20, drop_tag = "丘丘人", disableWander = true, area_id = 101 },
	{ config_id = 27004, monster_id = 21020101, pos = { x = 439.741, y = 135.333, z = -473.852 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 101 },
	{ config_id = 27005, monster_id = 21010201, pos = { x = 441.859, y = 135.034, z = -479.099 }, rot = { x = 358.965, y = 327.557, z = 358.373 }, level = 1, drop_tag = "丘丘人", area_id = 101 },
	{ config_id = 27006, monster_id = 21011001, pos = { x = 430.911, y = 135.357, z = -466.416 }, rot = { x = 0.000, y = 218.867, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, area_id = 101 },
	{ config_id = 27007, monster_id = 21010501, pos = { x = 442.649, y = 135.242, z = -475.906 }, rot = { x = 0.000, y = 313.271, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", area_id = 101 },
	{ config_id = 27009, monster_id = 21010501, pos = { x = 432.690, y = 135.481, z = -468.380 }, rot = { x = 0.000, y = 262.145, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, area_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 27002, gadget_id = 70211012, pos = { x = 434.284, y = 135.482, z = -473.574 }, rot = { x = 0.000, y = 52.812, z = 0.000 }, level = 16, drop_tag = "战斗中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 101 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1027003, name = "ANY_MONSTER_DIE_27003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_27003", action = "action_EVENT_ANY_MONSTER_DIE_27003" },
	{ config_id = 1027008, name = "ANY_MONSTER_DIE_27008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_27008", action = "action_EVENT_ANY_MONSTER_DIE_27008" }
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
		monsters = { 27001, 27006, 27009 },
		gadgets = { 27002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_27003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 27004, 27005, 27007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_27008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_27003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_27003(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=436.2458,y=136.1841,z=-469.9831}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 20) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002027, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_27008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_27008(context, evt)
	-- 将configid为 27002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 27002, GadgetState.Default) then
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
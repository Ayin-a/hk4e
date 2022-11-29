-- 基础信息
local base_info = {
	group_id = 133303107
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 107001, monster_id = 25010301, pos = { x = -1471.540, y = 214.667, z = 3526.777 }, rot = { x = 0.000, y = 94.588, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 9003, area_id = 23 },
	{ config_id = 107004, monster_id = 25020201, pos = { x = -1461.823, y = 211.765, z = 3516.497 }, rot = { x = 0.000, y = 14.453, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 9004, area_id = 23 },
	{ config_id = 107005, monster_id = 25060101, pos = { x = -1477.284, y = 209.075, z = 3516.218 }, rot = { x = 0.000, y = 143.900, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 4, area_id = 23 },
	{ config_id = 107006, monster_id = 25030201, pos = { x = -1474.662, y = 208.933, z = 3513.110 }, rot = { x = 0.000, y = 324.499, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 4, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 107002, gadget_id = 70211012, pos = { x = -1461.569, y = 212.131, z = 3519.594 }, rot = { x = 0.000, y = 214.237, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 107008, gadget_id = 70210101, pos = { x = -1468.284, y = 212.829, z = 3522.903 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1107003, name = "ANY_MONSTER_DIE_107003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_107003", action = "action_EVENT_ANY_MONSTER_DIE_107003" }
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
		monsters = { 107001, 107004, 107005, 107006 },
		gadgets = { 107002, 107008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_107003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_107003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_107003(context, evt)
	-- 将configid为 107002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 107002, GadgetState.Default) then
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
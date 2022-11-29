-- 基础信息
local base_info = {
	group_id = 133310149
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 149001, monster_id = 23050101, pos = { x = -2197.456, y = 206.379, z = 4674.075 }, rot = { x = 0.000, y = 337.108, z = 0.000 }, level = 32, drop_tag = "藏镜侍女", disableWander = true, area_id = 26 },
	{ config_id = 149004, monster_id = 25210401, pos = { x = -2182.995, y = 205.199, z = 4668.501 }, rot = { x = 0.000, y = 289.905, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9001, area_id = 26 },
	{ config_id = 149005, monster_id = 25210202, pos = { x = -2178.279, y = 209.122, z = 4651.900 }, rot = { x = 0.000, y = 274.638, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9003, area_id = 26 },
	{ config_id = 149006, monster_id = 23010401, pos = { x = -2185.891, y = 205.408, z = 4669.574 }, rot = { x = 0.000, y = 106.583, z = 0.000 }, level = 32, drop_tag = "先遣队", pose_id = 9011, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 149002, gadget_id = 70211012, pos = { x = -2196.083, y = 207.178, z = 4665.542 }, rot = { x = 3.721, y = 356.698, z = 356.641 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1149003, name = "ANY_MONSTER_DIE_149003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_149003", action = "action_EVENT_ANY_MONSTER_DIE_149003" }
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
		monsters = { 149001, 149004, 149005, 149006 },
		gadgets = { 149002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_149003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_149003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_149003(context, evt)
	-- 将configid为 149002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 149002, GadgetState.Default) then
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
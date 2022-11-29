-- 基础信息
local base_info = {
	group_id = 133309235
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 235001, monster_id = 23030101, pos = { x = -2178.684, y = 32.290, z = 5537.150 }, rot = { x = 0.000, y = 99.801, z = 0.000 }, level = 32, drop_tag = "召唤师", disableWander = true, area_id = 27 },
	{ config_id = 235011, monster_id = 25210402, pos = { x = -2175.048, y = 32.292, z = 5531.429 }, rot = { x = 0.000, y = 8.450, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9001, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 235002, gadget_id = 70211002, pos = { x = -2175.612, y = 32.241, z = 5545.233 }, rot = { x = 0.000, y = 92.044, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 235009, gadget_id = 70210101, pos = { x = -2180.780, y = 32.911, z = 5545.643 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 27 },
	{ config_id = 235010, gadget_id = 70210101, pos = { x = -2175.726, y = 32.826, z = 5554.272 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1235003, name = "ANY_MONSTER_DIE_235003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_235003", action = "action_EVENT_ANY_MONSTER_DIE_235003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 235012, gadget_id = 70310004, pos = { x = -2177.317, y = 32.292, z = 5537.363 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 27 }
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
		monsters = { 235001, 235011 },
		gadgets = { 235002, 235009, 235010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_235003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_235003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_235003(context, evt)
	-- 将configid为 235002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 235002, GadgetState.Default) then
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
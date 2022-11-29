-- 基础信息
local base_info = {
	group_id = 133210523
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 523001, monster_id = 25080201, pos = { x = -3732.096, y = 127.229, z = -916.701 }, rot = { x = 0.000, y = 192.594, z = 0.000 }, level = 32, drop_tag = "浪人武士", disableWander = true, pose_id = 1004, area_id = 17 },
	{ config_id = 523004, monster_id = 25080201, pos = { x = -3733.812, y = 126.920, z = -920.266 }, rot = { x = 0.000, y = 35.127, z = 0.000 }, level = 30, drop_tag = "浪人武士", disableWander = true, pose_id = 1004, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 523002, gadget_id = 70211002, pos = { x = -3734.194, y = 126.767, z = -917.868 }, rot = { x = 348.376, y = 117.175, z = 354.537 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 523006, gadget_id = 70900393, pos = { x = -3732.811, y = 126.732, z = -915.200 }, rot = { x = 0.000, y = 19.575, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 523007, gadget_id = 70900393, pos = { x = -3735.135, y = 126.492, z = -920.256 }, rot = { x = 0.000, y = 110.203, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1523003, name = "ANY_MONSTER_DIE_523003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_523003", action = "action_EVENT_ANY_MONSTER_DIE_523003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 523005, gadget_id = 70310006, pos = { x = -3732.762, y = 127.096, z = -918.269 }, rot = { x = 0.000, y = 295.331, z = 0.000 }, level = 30, area_id = 17 }
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
		monsters = { 523001, 523004 },
		gadgets = { 523002, 523006, 523007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_523003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_523003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_523003(context, evt)
	-- 将configid为 523002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 523002, GadgetState.Default) then
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
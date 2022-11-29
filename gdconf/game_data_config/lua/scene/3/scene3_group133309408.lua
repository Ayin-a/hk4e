-- 基础信息
local base_info = {
	group_id = 133309408
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 408001, gadget_id = 70330342, pos = { x = -2689.792, y = -84.077, z = 5317.378 }, rot = { x = 355.347, y = 130.602, z = 17.858 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 27 },
	{ config_id = 408002, gadget_id = 70330266, pos = { x = -2689.313, y = -84.007, z = 5317.302 }, rot = { x = 358.838, y = 58.135, z = 11.071 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 408005, gadget_id = 70210101, pos = { x = -2702.750, y = -86.423, z = 5323.685 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石须弥", persistent = true, area_id = 27 },
	{ config_id = 408006, gadget_id = 70210101, pos = { x = -2662.374, y = -76.976, z = 5327.580 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石须弥", persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1408003, name = "ANY_GADGET_DIE_408003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_408003", action = "action_EVENT_ANY_GADGET_DIE_408003", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1408004, name = "GADGET_STATE_CHANGE_408004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_408004", action = "", trigger_count = 0 }
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
		monsters = { },
		gadgets = { 408002, 408005, 408006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_408003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_408003(context, evt)
	if 408002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_408003(context, evt)
	-- 创建id为408001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 408001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2012, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end
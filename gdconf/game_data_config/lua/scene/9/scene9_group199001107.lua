-- 基础信息
local base_info = {
	group_id = 199001107
}

-- DEFS_MISCS
local defs = 
{
        rmd_list = {1111151,1111152,1111153},
}
--从table中取得随机value
function LF_GetRandomResult(context, source_table)

        math.randomseed(ScriptLib.GetServerTime(context))
        rand_index = math.random(#source_table)
        
        if nil ~= source_table[rand_index] then
                ScriptLib.PrintContextLog(context, "## [GetRandom] Get Random Result: value@"..source_table[rand_index])
                return source_table[rand_index]
        end
        ScriptLib.PrintContextLog(context, "## [GetRandom] Get Random Result failed! rand_index@"..rand_index)
        return -1
end

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
	{ config_id = 107002, gadget_id = 70360001, pos = { x = 176.490, y = 120.000, z = 535.595 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 }
}

-- 区域
regions = {
	{ config_id = 107001, shape = RegionShape.SPHERE, radius = 20, pos = { x = 180.077, y = 124.999, z = 539.777 }, area_id = 402 }
}

-- 触发器
triggers = {
	{ config_id = 1107001, name = "ENTER_REGION_107001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_107001", action = "action_EVENT_ENTER_REGION_107001" }
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
		gadgets = { 107002 },
		regions = { 107001 },
		triggers = { "ENTER_REGION_107001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
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
function condition_EVENT_ENTER_REGION_107001(context, evt)
	if evt.param1 ~= 107001 then return false end
	
	--弹出Reminder提示玩家不处于要求的状态下，状态ID为2代表玩家处于开船状态
	    if 2 ~= ScriptLib.GetPlayerVehicleType(context,context.uid) then
	      if 0 ~= 0 then
	        ScriptLib.ShowReminder(context, 0)
	        return false
	      else
	        return false
	      end
	    else
	      return true
	    end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_107001(context, evt)
	local rmd_id = LF_GetRandomResult(context, defs.rmd_list)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199001107, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=180,y=120,z=539.6}
	if 0 ~= ScriptLib.ShowReminderRadius(context,  rmd_id, pos, 20) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	
	return 0
end
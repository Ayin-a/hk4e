--ServerUploadTool Save to [/root/env/data/lua/common/V3_1]
--[[
=====================================================================================================================
||	Filename 	  ||	RotateDungeon
||	RelVersion    ||	3.1
||	Owner         ||	xudong.sun
||	Description   ||	3.1旋转地城
||	LogName       ||    ## RotateDungeon_LOG
||	Protection    ||	每次进地城的角度初始化，在leveltagdata中配置
=====================================================================================================================
local Option_to_Rotation = {
	[操作台ConfigID]={
		[OptionID] = { levelTag = "qingtian", arrayPoint = 1 },
		[OptionID] = { levelTag = "qingtian", arrayPoint = 2 },
	},
	[操作台ConfigID]={
		[OptionID] = { levelTag = "qingtian", arrayPoint = 1 },
		[OptionID] = { levelTag = "qingtian", arrayPoint = 2 },
	},
	[操作台ConfigID]={
		[OptionID] = { levelTag = "qingtian", arrayPoint = 1 },
		[OptionID] = { levelTag = "qingtian", arrayPoint = 2 },
		[OptionID] = { levelTag = "qingtian", arrayPoint = 3 },
	},	
}

local AxisList = {
	[操作台configID] = 轴ConfigID,
	[操作台configID] = 轴ConfigID,
	[操作台configID] = 轴ConfigID,
}

local ArrayID = {
	[操作台ConfigID] = 1
}

=======================================================================================]]

local extrTriggers = {
	initialtrigger = {
		["Option_Down"] = { config_id = 80000001, name = "Option_Down", event= EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_option_down", trigger_count = 0},
		--["Group_load"] = { config_id = 80000002, name = "Group_load", event= EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0},
	}
}

-- function action_group_load(context, evt)

-- 	-- for k,v in pairs(Option_to_Rotation) do
-- 	-- 	ScriptLib.ChangeToTargetLevelTag(context, _nextRotate.levelTag)
-- 	-- end

-- 	return 0
-- end


function action_option_down( context, evt )

	ScriptLib.PrintContextLog(context, "## RotateDungeon_LOG : 触发Event")


	if AxisList[evt.param1] == nil or Option_to_Rotation[evt.param1] == nil then

		ScriptLib.PrintContextLog(context, "## RotateDungeon_LOG : 判定未通过")
		return 0

	end


	--获取轴的configID
	local _axisConfigID = AxisList[evt.param1]

	--获取当前需要调整的旋转角度
	local _nextRotate = Option_to_Rotation[evt.param1][evt.param2]

	if _nextRotate == nil or _axisConfigID == nil then
		ScriptLib.PrintContextLog(context, "## RotateDungeon_LOG : 判定未通过 2 ")
		ScriptLib.PrintGroupWarning(context,"## RotateDungeon action_option_down: 获取到的轴物件为空或者下一个旋转点为空")
		return 0
	end

	ScriptLib.PrintContextLog(context, "## RotateDungeon_LOG : 将configID ".._axisConfigID.." 移动到array "..ArrayID[evt.param1].." 的point ".._nextRotate.arrayPoint)

	--设置轴旋转
	ScriptLib.SetPlatformPointArray(context, _axisConfigID, ArrayID[evt.param1], {_nextRotate.arrayPoint}, {route_type = 0})
	--设置LevelTag
	ScriptLib.ChangeToTargetLevelTag(context, _nextRotate.levelTag)

	return 0
end




function LF_Initialize_Group()
	for k,v in pairs(extrTriggers.initialtrigger) do
		table.insert(triggers, v)
		table.insert(suites[init_config.suite].triggers, v.name)
	end

	return 0
end

LF_Initialize_Group()
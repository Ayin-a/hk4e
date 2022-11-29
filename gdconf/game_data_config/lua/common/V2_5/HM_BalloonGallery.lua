--ServerUploadTool Save to [/root/env/data/lua/common/V2_5]
--[[
=====================================================================================================================
||	Filename 	  ||	HM_BalloonGallery  家园射气球
||	RelVersion    ||	2.5
||	Owner         ||	xudong.sun
||	Description   ||	家园射气球玩法
||	LogName       ||    ## HM_LOG
||	Protection    ||	group卸载时关闭gallery
=====================================================================================================================


=======================================================================================]]

local extrTriggers = {
	initialtrigger = {
		["Gallery_Start"] = { config_id = 80000001, name = "Gallery_Start", event= EventType.EVENT_GALLERY_START, source = "", condition = "", action = "action_GalleryStart", trigger_count = 0 },
		["Gallery_Stop"] = { config_id = 80000002, name = "Gallery_Stop", event= EventType.EVENT_GALLERY_STOP, source = "", condition = "", action = "action_GalleryStop", trigger_count = 0 },
		["Time_Axis"] = { config_id = 80000003, name = "Time_Axis", event= EventType.EVENT_TIME_AXIS_PASS, source = "balloonInterval", condition = "", action = "action_TimeAxis", trigger_count = 0 },
		["Gadget_Die"] = { config_id = 80000006, name = "Gadget_Die", event= EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_GadgetDie", trigger_count = 0 },
		["UIInteract"] = { config_id = 80000007, name = "UIInteract", event= EventType.EVENT_SELECT_UIINTERACT, source = "", condition = "", action = "action_UIInteract", trigger_count = 0 },
		["Time_Axis2"] = { config_id = 80000008, name = "Time_Axis2", event= EventType.EVENT_TIME_AXIS_PASS, source = "balloonInterval_2", condition = "", action = "action_TimeAxis_2", trigger_count = 0 },
		["Group_Unload"] = { config_id = 80000009, name = "Group_Unload", event= EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_GroupUnload", trigger_count = 0 },
	}
}

galleryID = 410002


function getRandomSize( context )

	local MAX = 0
	local defaultSize = {x= 4, y= 4, z= 4}

	for i,v in ipairs(randomSize) do
		MAX = MAX + v.weight
	end

	local randomNum = math.random(0,MAX)

	for i,v in ipairs(randomSize) do
		if randomNum <= v.weight then
			return v.size
		else
			randomNum = randomNum - v.weight
		end
	end

	return defaultSize
end

function action_GroupUnload( context, evt )

	--关局
	ScriptLib.SetGroupTempValue(context, "isInGallery", 0, {})

	ScriptLib.PrintContextLog(context, "## HM_LOG : group unload")
	
	ScriptLib.SetGroupGadgetStateByConfigId(context, 0, boardID, 0)

	--关闭时间轴
	ScriptLib.EndTimeAxis(context, "balloonInterval")
	ScriptLib.EndTimeAxis(context, "balloonInterval_2")

	--回收
	ScriptLib.KillExtraGroupSuite(context, 0, suitID)
	ScriptLib.KillExtraGroupSuite(context, 0, suitID_2)

	--StopGalleryByReason 0-NONE 1-超时 2-客户端中断 3-lua设置成功 4-lua设置失败
	ScriptLib.StopGalleryByReason(context, galleryID, 2)

	return 0
end


function Homeworld_Gallery_ShootBalloon( context, param1 )
	
	if param1 == 1 then
		ScriptLib.PrintContextLog(context, "## HM_LOG : getScore Low")
		ScriptLib.UpdatePlayerGalleryScore(context, 410002, {["score"]=lowScore})
	elseif param1 == 2 then
		ScriptLib.PrintContextLog(context, "## HM_LOG : getScore High")
		ScriptLib.UpdatePlayerGalleryScore(context, 410002, {["score"]=highScore})
	end

	return 0
end

function action_GadgetDie( context,evt )

	if ScriptLib.GetGroupTempValue(context, "isInGallery", {})==0 then
		return 0
	end

	local areaClear = true
	local areaClear_2 = true

	for i,v in ipairs(suites[suitID].gadgets) do
		if v ~= evt.param1 and ScriptLib.GetGadgetStateByConfigId(context, 0, v) ~= -1 then
			areaClear = false
			break
		end
	end

	for i,v in ipairs(suites[suitID_2].gadgets) do
		if v ~= evt.param1 and ScriptLib.GetGadgetStateByConfigId(context, 0, v) ~= -1 then
			areaClear_2 = false
			break
		end
	end


	if areaClear then

		ScriptLib.PrintContextLog(context, "## HM_LOG : TimeAxis Restart")
		--关闭时间轴
		ScriptLib.EndTimeAxis(context, "balloonInterval")
		--创建
		ScriptLib.CreateGadgetWave(context, areaID, suitID, 10, {x= 20, y = 10, z = 20}, getRandomSize(context))

		--开启一个时间轴
		ScriptLib.InitTimeAxis(context, "balloonInterval", intervalTime, true)
	end

	if areaClear_2 then
		
		ScriptLib.PrintContextLog(context, "## HM_LOG : TimeAxis_2 Restart")
		--关闭时间轴
		ScriptLib.EndTimeAxis(context, "balloonInterval_2")
		--创建
		ScriptLib.CreateGadgetWave(context, areaID_2, suitID_2, 10, {x= 20, y = 10, z = 20}, getRandomSize( context ))

		--开启一个时间轴
		ScriptLib.InitTimeAxis(context, "balloonInterval_2", intervalTime, true)
	end



	return 0
end

function action_GalleryStart( context,evt )

	if evt.param1 ~= galleryID then
		ScriptLib.PrintContextLog(context, "## HM_LOG : galleryID not existent")
		return 0
	end

	--开局
	ScriptLib.SetGroupTempValue(context, "isInGallery", 1, {})

	ScriptLib.PrintContextLog(context, "## HM_LOG : gallery start")
	
	ScriptLib.SetGroupGadgetStateByConfigId(context, 0, boardID, 201)

	--开启时间轴
	ScriptLib.InitTimeAxis(context, "balloonInterval", intervalTime, true)
	ScriptLib.InitTimeAxis(context, "balloonInterval_2", intervalTime, true)
	--创建
	ScriptLib.CreateGadgetWave(context, areaID, suitID, 10, {x= 20, y = 10, z = 20}, getRandomSize( context ))
	ScriptLib.CreateGadgetWave(context, areaID_2, suitID_2, 10, {x= 20, y = 10, z = 20}, getRandomSize( context ))

	return 0
end

function action_GalleryStop( context,evt )

	if evt.param1 ~= galleryID then
		ScriptLib.PrintContextLog(context, "## HM_LOG : galleryID not existent")
		return 0
	end

	--关局
	ScriptLib.SetGroupTempValue(context, "isInGallery", 0, {})

	ScriptLib.PrintContextLog(context, "## HM_LOG : gallery Stop")
	
	ScriptLib.SetGroupGadgetStateByConfigId(context, 0, boardID, 0)

	--关闭时间轴
	ScriptLib.EndTimeAxis(context, "balloonInterval")
	ScriptLib.EndTimeAxis(context, "balloonInterval_2")

	--回收
	ScriptLib.KillExtraGroupSuite(context, 0, suitID)
	ScriptLib.KillExtraGroupSuite(context, 0, suitID_2)

	return 0
end

function action_TimeAxis( context, evt)

	--回收
	ScriptLib.KillExtraGroupSuite(context, 0, suitID)
	--创建
	ScriptLib.CreateGadgetWave(context, areaID, suitID, 10, {x= 20, y = 10, z = 20}, getRandomSize( context ))

	return 0
end

function action_TimeAxis_2( context, evt)

	--回收
	ScriptLib.KillExtraGroupSuite(context, 0, suitID_2)
	--创建
	ScriptLib.CreateGadgetWave(context, areaID_2, suitID_2, 10, {x= 20, y = 10, z = 20}, getRandomSize( context ))

	return 0
end


function action_UIInteract( context, evt )

	if evt.param1 == 1 then
		--开启一个时间轴
		ScriptLib.PrintContextLog(context, "## HM_LOG : StateChange Play Start")
		-- ScriptLib.InitTimeAxis(context, "balloonInterval", intervalTime, true)
		
		if ScriptLib.StartHomeGallery(context, galleryID, context.uid) == -1 then
			ScriptLib.SendServerMessageByLuaKey(context, "HOMEOWRLD_DUPLICATE_GALLERY", {context.uid})
		end
	end

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
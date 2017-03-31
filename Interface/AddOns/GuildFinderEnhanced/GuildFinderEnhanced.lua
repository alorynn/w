--Copyright 2016 Shadowsdabom
--This program is free software: you can redistribute it and/or modify
--it under the terms of the GNU General Public License as published by
--the Free Software Foundation, either version 3 of the License, or
--(at your option) any later version.
--
--This program is distributed in the hope that it will be useful,
--but WITHOUT ANY WARRANTY; without even the implied warranty of
--MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--GNU General Public License for more details.
--
--You should have received a copy of the GNU General Public License
--along with this program.  If not, see <http://www.gnu.org/licenses/>.

-------------------
--Saved Variables--
-------------------

--UI Constants
local LookingForGuildNewHeight = 630;
local LookingForGuildOldHeight = 0;
local KeywordSearchBoxDefaultText = "Click here to enter keywords";

--Saving handles to old functions
local getInfo = GetRecruitingGuildInfo;
local getNum = GetNumRecruitingGuilds;
local getTabardInfo = GetRecruitingGuildTabardInfo;

--Used to save current guild list and number of guilds to display in browse tab
local indexmap = nil;
local currNumGuilds = nil;

--Sorting types
local SORT_DEFAULT, SORT_NAME, SORT_NUM_MEMBERS, SORT_ACH_POINTS = 0, 1, 2, 3;

--dynamic labels used for filtering/sorting
local sortType = SORT_DEFAULT; -- changed with ingame radio buttons
local nameSearch = ""; -- should be changed with ingame search bar
local userSetKeywords = ""; -- should be changed with ingame textbox

--------------------
--Helper functions--
--------------------

--returns true if the first string starts with the second string, false otherwise
local function startsWith(str, start)
	if (start == "") then
		return true;
	elseif (string.len(start) > string.len(str)) then
		return false;
	end

	return string.sub(str, 1, string.len(start)) == start;
end

--returns string with beginning space and ending space removed
local function trimString(str)
	return str:gsub("^%s*(.-)%s*$", "%1");
end

--returns table populated with substrings found between sep substrings
--taken from post found @http://stackoverflow.com/questions/1426954/split-string-in-lua
local function splitString(inputstr, sep)
        if (sep == nil) then
            sep = "%s";
        end
		
        local t = {};
		
        for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
                table.insert(t, str);
        end
		
        return t;
end

--returns the string without any punctuation
local function stripPunctuation(str)
	return string.gsub(str, "%p+", "");
end

--returns the starting index of a word in the specified string or nil if not found
local function findWordInString(str, word, ignorePunctuation)
	local start = 0;
	local tokens = splitString(str);
	
	for i, token in ipairs(tokens) do
		local length = string.len(token);
		
		if (ignorePunctuation) then
			token = stripPunctuation(token);
		end
		
		if (token == word) then
			return start; -- word found starting at this index
		else
			start = start + length; -- adding token's length to offset from start
		end
	end
	
	return nil; -- word not found in str's words
end

--returns true if a guild's name meets the currently set name search criteria, false if not
local function nameMatchesSearch(name)
	return startsWith(strlower(name), strlower(nameSearch));
end

--returns true if a guild's comment matches all of the currently set keywords' criteria, false if not
local function keywordsMatchSearch(keywords, name, desc)
	flag = true;
	nameLower = strlower(name);
	descLower = strlower(desc);
	
	for i, keyword in ipairs(keywords) do
		local keywordLower = strlower(keyword);
		
		if ((findWordInString(nameLower, keywordLower, true) == nil) and (findWordInString(descLower, keywordLower, true) == nil)) then
			flag = false;
			break;
		end
	end
	
	return flag;
end

--prints a message to the ingame console with this addon's color and prefix
local function msg(str)
	print("|cff0eb7f9GuildFinderEnhanced: " .. str);
end

--returns a table of the user set keyword strings
local function getKeywordsList()
	local str = trimString(userSetKeywords);
	
	-- Checking if keywords bar was blank
	if (str == "") then
		return {};
	end
	
	return splitString(str);
end

-----------------------
--Overriden Functions--
-----------------------

--returns the number of recruiting guilds or the current number of guilds displayable after filtering
function GetNumRecruitingGuilds()
	if not currNumGuilds then
		return getNum();
	end

	return currNumGuilds;
end

--returns the guild info of an indexed recruiting guild defined by the newly indexed map
function GetRecruitingGuildInfo(index, ...)
	InitGuildInfoMap();
	
	return getInfo(indexmap[index].index, ...);
end

--returns the guild tabard for index i in the new list
function GetRecruitingGuildTabardInfo(index)
	return getTabardInfo(indexmap[index].index);
end
---------------------
--Sorting Functions--
---------------------

--primary sort by name, secondary sort by numMembers, tertiary sort by achPoints
local function compareByNames(a, b)
	if (strlower(a.name) == strlower(b.name)) then
		if (a.numMembers == b.numMembers) then
			return a.achPoints > b.achPoints;
		end
		
		return a.numMembers > b.numMembers;
	end
	
	return strlower(a.name) < strlower(b.name);
end

--primary sort by numMembers, secondary sort by achPoints, tertiary sort by name
local function compareByNumMembers(a, b)
	if (a.numMembers == b.numMembers) then
		if (a.achPoints == b.achPoints) then
			return strlower(a.name) < strlower(b.name);
		end
		
		return a.achPoints > b.achPoints;
	end
	
	return a.numMembers > b.numMembers;
end

--primary sort by achPoints, secondary sort by numMembers, tertiary sort by name
local function compareByAchPoints(a, b)
	if (a.achPoints == b.achPoints) then
		if (a.numMembers == b.numMembers) then
			return strlower(a.name) < strlower(b.name);
		end
		
		return a.numMembers > b.numMembers;
	end
	
	return a.achPoints > b.achPoints;
end

------------------
--Event Handlers--
------------------

--Listens for sort type change
local function SortTypeChange_OnClick(self, ...)
	if (self == NameSortTypeButton) then
		DefaultSortTypeButton:SetChecked(false);
		sortType = SORT_NAME;
		MembersSortTypeButton:SetChecked(false);
		PointsSortTypeButton:SetChecked(false);
	elseif (self == MembersSortTypeButton) then
		DefaultSortTypeButton:SetChecked(false);
		NameSortTypeButton:SetChecked(false);
		sortType = SORT_NUM_MEMBERS;
		PointsSortTypeButton:SetChecked(false);
	elseif (self == PointsSortTypeButton) then
		DefaultSortTypeButton:SetChecked(false);
		NameSortTypeButton:SetChecked(false);
		MembersSortTypeButton:SetChecked(false);
		sortType = SORT_ACH_POINTS;
	else
		sortType = SORT_DEFAULT;
		NameSortTypeButton:SetChecked(false);
		MembersSortTypeButton:SetChecked(false);
		PointsSortTypeButton:SetChecked(false);
	end
	
	indexmap = nil;
	currNumGuilds = nil;
end

--Listens for the original search settings being changed
local function LookingForGuildOptions_OnChange(...)
	indexmap = nil;
	currNumGuilds = nil;
end

--Listens for search bar single char change
local function NameSearchBar_OnChange(self, isUserMade)
	nameSearch = self:GetText();
	indexmap = nil;
	currNumGuilds = nil;
	
	NameSearchBar_OnChangeOld(self, isUserMade);
end

--When keyword bar is selected will remove the initial message text for user
local function KeywordSearchBox_OnFocusGained(self)
	if (self:GetText() == KeywordSearchBoxDefaultText) then
		self:SetText(" ");
		self:SetTextColor(1, 1, 1, 1);
	end
end

--When focus is lost sets field to message text if user does not enter anything
local function KeywordSearchBox_OnFocusLost(self)
	if (trimString(self:GetText()) == "") then
		self:SetTextColor(0.42, 0.42, 0.42, 0.8);
		self:SetText(KeywordSearchBoxDefaultText);
	end
end

--Listens for search box single char change
local numChars = 1;
local function KeywordSearchBox_OnChange(self, isUserMade)
	if (isUserMade) then
		
		local text = self:GetText();
		
		if (string.len(text) < numChars) then
			-- delete took place
			if (not startsWith(text, " ")) then
				text = " " .. text;
				self:SetText(text);
				self:SetCursorPosition(1);
				
				return;
			else
				numChars = numChars - 1;
			end
		else
			-- char was added
			numChars = numChars + 1;
		end
		
		userSetKeywords = text;
		indexmap = nil;
		currNumGuilds = nil;
	end
end

--Treats initial space character as not a character in field
local function KeywordSearchBox_OnCursorMove(self, ...)
	if (self:GetCursorPosition() < 1) then
		self:SetCursorPosition(1);
	end
end

--Removes focus from search bar when user hits enter key
local function KeywordSearchBox_OnEnterPressed(self)
	self:ClearFocus();
end

--Changes the height of the frame back to normal
local function SetOldHeight(...)
	LookingForGuildFrame:SetHeight(LookingForGuildOldHeight);
end

--Changes the height of the frame to be the larger height for new settings
local function SetNewHeight(...)
	LookingForGuildFrame:SetHeight(LookingForGuildNewHeight);
end

--Changes the position of the frame whenever its shown
local function SetFramePosition(self)
	self:SetPoint("TOPLEFT", 16, -10);
end

----------------------------
--Initialization Functions--
----------------------------

--Sets up the guild finder window with new widgets
function GuildFinderEnhancedUIInit()
	LookingForGuildOldHeight = LookingForGuildFrame:GetHeight();
	LookingForGuildFrame:SetHeight(LookingForGuildNewHeight);
	LookingForGuildFrame:HookScript("OnShow", SetFramePosition);
	
	--Frame for searching by name
	CreateFrame("Frame", "LookingForGuildSearchFrame", LookingForGuildStartFrame, "LookingForGuildSectionTemplate");
	LookingForGuildSearchFrame:SetPoint("TOPLEFT", 8, -10);
	LookingForGuildSearchFrameText:SetText("Search by name:");
	LookingForGuildSearchFrame:SetSize(LookingForGuildSearchFrame:GetWidth(), 60);
	
	--Add search bar for name to frame
	CreateFrame("EditBox", "NameSearchBar", LookingForGuildSearchFrame, "SearchBoxTemplate");
	NameSearchBar:SetPoint( "TOPLEFT", 10, -25);
	NameSearchBar:SetSize(290, 30);
	NameSearchBar:SetText(""); -- default text blank
	NameSearchBar:HookScript("OnTextChanged", NameSearchBar_OnChange);
	
	
	--Frame for searching by keywords
	CreateFrame("Frame", "LookingForGuildKeywordsFrame", LookingForGuildStartFrame, "LookingForGuildSectionTemplate");
	LookingForGuildKeywordsFrame:SetPoint("TOPLEFT", LookingForGuildSearchFrame, "BOTTOMLEFT", 0, -4);
	LookingForGuildKeywordsFrameText:SetText("Filter using keywords:");
	LookingForGuildKeywordsFrame:SetSize(LookingForGuildSearchFrame:GetWidth(), 60);
	
	--Add text area for setting keywords in frame
	CreateFrame("EditBox", "KeywordSearchBox", LookingForGuildKeywordsFrame, "InputBoxTemplate");
	KeywordSearchBox:SetPoint( "TOPLEFT", 10, -25);
	KeywordSearchBox:SetSize(290, 30);
	KeywordSearchBox:SetText(KeywordSearchBoxDefaultText); -- default text blank
	KeywordSearchBox:SetTextColor(0.42, 0.42, 0.42, 0.8);
	KeywordSearchBox:SetFont("Fonts\\FRIZQT__.TTF", 10, "");
	KeywordSearchBox:HookScript("OnTextChanged", KeywordSearchBox_OnChange);
	KeywordSearchBox:HookScript("OnEditFocusGained", KeywordSearchBox_OnFocusGained);
	KeywordSearchBox:HookScript("OnEditFocusLost", KeywordSearchBox_OnFocusLost);
	KeywordSearchBox:HookScript("OnCursorChanged", KeywordSearchBox_OnCursorMove);
	KeywordSearchBox:HookScript("OnEnterPressed", KeywordSearchBox_OnEnterPressed);
	KeywordSearchBox:SetAutoFocus(false);
	
	--Frame for selecting sort type
	CreateFrame("Frame", "LookingForGuildSortFrame", LookingForGuildStartFrame, "LookingForGuildSectionTemplate");
	LookingForGuildSortFrame:SetPoint("TOPLEFT", LookingForGuildKeywordsFrame, "BOTTOMLEFT", 0, -4);
	LookingForGuildSortFrameText:SetText("Order results by:");
	
	--Add radio buttons for sort types to frame
	CreateFrame("CheckButton", "DefaultSortTypeButton", LookingForGuildSortFrame, "UIRadioButtonTemplate");
	CreateFrame("CheckButton", "NameSortTypeButton",    LookingForGuildSortFrame, "UIRadioButtonTemplate");
	CreateFrame("CheckButton", "MembersSortTypeButton", LookingForGuildSortFrame, "UIRadioButtonTemplate");
	CreateFrame("CheckButton", "PointsSortTypeButton",  LookingForGuildSortFrame, "UIRadioButtonTemplate");
	
	DefaultSortTypeButton:SetPoint( "TOPLEFT", 8, -25);
	NameSortTypeButton:SetPoint(    "TOPLEFT", 8, -45);
	MembersSortTypeButton:SetPoint( "TOPLEFT", 120, -25);
	PointsSortTypeButton:SetPoint(  "TOPLEFT", 120, -45);
	
	DefaultSortTypeButton:SetSize(20, 20);
	NameSortTypeButton:SetSize(20, 20);
	MembersSortTypeButton:SetSize(20, 20);
	PointsSortTypeButton:SetSize(20, 20);
	
	DefaultSortTypeButtonText:SetText(" Default");
	NameSortTypeButtonText:SetText(" Name");
	MembersSortTypeButtonText:SetText(" Num Members");
	PointsSortTypeButtonText:SetText(" Num Points");
	
	DefaultSortTypeButtonText:SetTextColor(255, 255, 255);
	NameSortTypeButtonText:SetTextColor(255, 255, 255);
	MembersSortTypeButtonText:SetTextColor(255, 255, 255);
	PointsSortTypeButtonText:SetTextColor(255, 255, 255);
	
	DefaultSortTypeButton:SetChecked(true); -- default sort is the default option
	
	DefaultSortTypeButton:HookScript("OnClick", SortTypeChange_OnClick);
	NameSortTypeButton:HookScript("OnClick", SortTypeChange_OnClick);
	MembersSortTypeButton:HookScript("OnClick", SortTypeChange_OnClick);
	PointsSortTypeButton:HookScript("OnClick", SortTypeChange_OnClick);

	--Setting the rest of the frames to below sorting frame
	LookingForGuildInterestFrame:SetPoint("TOPLEFT", LookingForGuildSortFrame, "BOTTOMLEFT", 0, -4)
	
	--Setting up other buttons to cause list to update correctly
	LookingForGuildQuestButton:HookScript("OnClick", LookingForGuildOptions_OnChange);
	LookingForGuildDungeonButton:HookScript("OnClick", LookingForGuildOptions_OnChange);
	LookingForGuildRaidButton:HookScript("OnClick", LookingForGuildOptions_OnChange);
	LookingForGuildPvPButton:HookScript("OnClick", LookingForGuildOptions_OnChange);
	LookingForGuildRPButton:HookScript("OnClick", LookingForGuildOptions_OnChange);
	
	LookingForGuildWeekdaysButton:HookScript("OnClick", LookingForGuildOptions_OnChange);
	LookingForGuildWeekendsButton:HookScript("OnClick", LookingForGuildOptions_OnChange);
	
	LookingForGuildTankButton:HookScript("OnClick", LookingForGuildOptions_OnChange);
	LookingForGuildTankButton.checkButton:HookScript("OnClick", LookingForGuildOptions_OnChange);
	LookingForGuildHealerButton:HookScript("OnClick", LookingForGuildOptions_OnChange);
	LookingForGuildHealerButton.checkButton:HookScript("OnClick", LookingForGuildOptions_OnChange);
	LookingForGuildDamagerButton:HookScript("OnClick", LookingForGuildOptions_OnChange);
	LookingForGuildDamagerButton.checkButton:HookScript("OnClick", LookingForGuildOptions_OnChange);
	
	LookingForGuildBrowseButton:HookScript("PreClick", SetOldHeight);
	LookingForGuildFrameTab1:HookScript("PreClick", SetNewHeight);
	LookingForGuildFrameTab2:HookScript("PreClick", SetOldHeight);
	LookingForGuildFrameTab3:HookScript("PreClick", SetOldHeight);
end

--Creates a new guild list based on the aformentioned sorting/filtering criteria
function InitGuildInfoMap()
	if not indexmap then
		--msg("Results have been updated");
		indexmap = {};
		local keywords = getKeywordsList();
		
		--for all recruiting guilds, adds their info to the list if they meet the search criteria
		j = 1;
		for i = 1, getNum() do
			local guildName, guildLevel, numGuildMembers, numGuildAchPoints, guildComment = getInfo(i);
			if (nameMatchesSearch(guildName) and keywordsMatchSearch(keywords, guildName, guildComment)) then
				indexmap[j] = {
					index = i, --saving original index for selection purposes
					name = guildName,
					level = guildLevel,
					numMembers = numGuildMembers,
					achPoints = numGuildAchPoints,
					comment = guildComment
				};
				j = j + 1; --used to keep track of list order
			end
		end
		
		--setting current number of guilds to be displayed after filters were applied
		currNumGuilds = j - 1;
		
		--setting sorting type for list
		if (sortType == SORT_NAME) then
			--msg("Using sort by name");
			table.sort(indexmap, compareByNames);
		elseif (sortType == SORT_NUM_MEMBERS) then
			--msg("Using sort by member number");
			table.sort(indexmap, compareByNumMembers);
		elseif (sortType == SORT_ACH_POINTS) then
			--msg("Using sort by achievement number");
			table.sort(indexmap, compareByAchPoints);
		elseif (sortType == SORT_DEFAULT) then
			--no sorting needed
			--msg("Using default order");
		end
		
		msg("Results have been updated, " .. currNumGuilds .. " results found");
	end
end

---------------
--Frame Setup--
---------------

--Setting up frame listeners
local gfe = CreateFrame("Frame", "GuildFinderEnhanced");
gfe:RegisterEvent("LF_GUILD_BROWSE_UPDATED");
gfe:RegisterEvent("ADDON_LOADED");

--Listens for UI changes to update addon
local function GFE_EventHandler(self, event, ...)
	if (event == "ADDON_LOADED" and select(1, ...) == "GuildFinderEnhanced") then
		self:UnregisterEvent("ADDON_LOADED");
		GuildFinderEnhancedUIInit();
	elseif (event == "LF_GUILD_BROWSE_UPDATED" and select(1, ...) == "GuildFinderEnhanced") then
		indexmap = nil;
		currNumGuilds = nil;
	end
end

gfe:SetScript("OnEvent", GFE_EventHandler);
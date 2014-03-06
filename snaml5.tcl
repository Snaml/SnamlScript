
# ******************************************************************************** 
#
# File Name:    snaml5.tcl
# Version:      5.0
# Platform:     Cross platforms: Windows XP, 7, 8, Linux, MacOS
# Date:         March 6, 2014
#
# Description:  SnamlScript is a HTML5 generator.
#               
# Result:       SNAMLSCRIPT for HTML5 IMPLEMENTATION WITH TCL.
#
# Author:       Chang LI, Neatware
# Copyright:    (c)2003-2014, Neatware. All Rights Reserved.
# License:      Open Source MIT License.
#
# *******************************************************************************/

# g_string == 1 string; 
# g_string == 0 channel with -nonewline

proc outs {s} {
	global g_channel g_string

	if {$g_string} { 	
		append g_channel $s
	} else {
		puts -nonewline $g_channel $s
	}
}

# g_string == 1 string; 
# g_string == 0 channel without -nonewline

proc outs2 {s} {
	global g_channel g_string
 
	if {$g_string} {
		append g_channel $s
	} else {
		puts $g_channel $s
	}
}

proc Execution {args elem ntype} {
	global g_channel
 	switch -exact -- $ntype {
		0	{
				if {[llength $args] == 0} {
#					puts -nonewline $g_channel "<$elem>"
					outs "<$elem>"
				} else {
#					puts -nonewline $g_channel "<$elem [lindex $args 0]>"
					outs "<$elem [lindex $args 0]>"
				}
			}
		1	{
				#puts $g_channel "</$elem>"
					outs2 "</$elem>"
			}
		2 {
				if {[llength $args] == 0} {
					#puts $g_channel "<$elem/>"
					outs2 "<$elem/>"
				} else {
					#puts $g_channel "<$elem [lindex $args 0]/>"
					outs2 "<$elem [lindex $args 0]/>"
				}
			}
		3 {
				switch -exact -- [llength $args] {
					0	{return "<$elem/>"}
					1 {return "<$elem>[lindex $args 0]</$elem>"}
					2 {return "<$elem [lindex $args 0]>[lindex $args 1]</$elem>"}
					default {return ""}
				}
			}
		4 {
				if {[llength $args] == 0} {
					return "<$elem/>"
				} else {
					return "<$elem [lindex $args 0]/>"
				}
			}
		default {raise "error $ntype"}
	}
}

proc _a 								{args}	{	return [Execution $args a 0] }
proc a_									{args}	{ return [Execution $args a 1] }
proc __a								{args}	{ return [Execution $args a 2] }
proc _a_								{args}	{ return [Execution $args a 3] }
proc __a_								{args}	{ return [Execution $args a 4] }

proc _A 								{args}	{	return [Execution $args A 0] }
proc A_									{args}	{ return [Execution $args A 1] }
proc __A								{args}	{ return [Execution $args A 2] }
proc _A_								{args}	{ return [Execution $args A 3] }
proc __A_								{args}	{ return [Execution $args A 4] }

proc _abbr 							{args}	{	return [Execution $args abbr 0] }
proc abbr_							{args}	{ return [Execution $args abbr 1] }
proc __abbr							{args}	{ return [Execution $args abbr 2] }
proc _abbr_							{args}	{ return [Execution $args abbr 3] }
proc __abbr_						{args}	{ return [Execution $args abbr 4] }

proc _ABBR 							{args}	{	return [Execution $args ABBR 0] }
proc ABBR_							{args}	{ return [Execution $args ABBR 1] }
proc __ABBR							{args}	{ return [Execution $args ABBR 2] }
proc _ABBR_							{args}	{ return [Execution $args ABBR 3] }
proc __ABBR_						{args}	{ return [Execution $args ABBR 4] }

#proc _acronym 					{args}	{	return [Execution $args a 0] }
#proc acronym_						{args}	{ return [Execution $args acronym 1] }
#proc __acronym					{args}	{ return [Execution $args acronym 2] }
#proc _acronym_					{args}	{ return [Execution $args acronym 3] }
#proc __acronym_					{args}	{ return [Execution $args acronym 4] }

#proc _ACRONYM 					{args}	{	return [Execution $args ACRONYM 0] }
#proc ACRONYM_						{args}	{ return [Execution $args ACRONYM 1] }
#proc __ACRONYM					{args}	{ return [Execution $args ACRONYM 2] }
#proc _ACRONYM_					{args}	{ return [Execution $args ACRONYM 3] }
#proc __ACRONYM_					{args}	{ return [Execution $args ACRONYM 4] }

proc _address 					{args}	{	return [Execution $args address 0] }
proc address_						{args}	{ return [Execution $args address 1] }
proc __address					{args}	{ return [Execution $args address 2] }
proc _address_					{args}	{ return [Execution $args address 3] }
proc __address_					{args}	{ return [Execution $args address 4] }

proc _ADDRESS 					{args}	{	return [Execution $args ADDRESS 0] }
proc ADDRESS_						{args}	{ return [Execution $args ADDRESS 1] }
proc __ADDRESS					{args}	{ return [Execution $args ADDRESS 2] }
proc _ADDRESS_					{args}	{ return [Execution $args ADDRESS 3] }
proc __ADDRESS_					{args}	{ return [Execution $args ADDRESS 4] }

proc _area 							{args}	{	return [Execution $args area 0] }
proc area_							{args}	{ return [Execution $args area 1] }
proc __area							{args}	{ return [Execution $args area 2] }
proc _area_							{args}	{ return [Execution $args area 3] }
proc __area_						{args}	{ return [Execution $args area 4] }

proc _AREA 							{args}	{	return [Execution $args AREA 0] }
proc AREA_							{args}	{ return [Execution $args AREA 1] }
proc __AREA							{args}	{ return [Execution $args AREA 2] }
proc _AREA_							{args}	{ return [Execution $args AREA 3] }
proc __AREA_						{args}	{ return [Execution $args AREA 4] }

proc _article	 					{args}	{	return [Execution $args article 0] }
proc article_						{args}	{ return [Execution $args article 1] }
proc __article					{args}	{ return [Execution $args article 2] }
proc _article_					{args}	{ return [Execution $args article 3] }
proc __article_					{args}	{ return [Execution $args article 4] }

proc _ARTICLE 					{args}	{	return [Execution $args ARTICLE 0] }
proc ARTICLE_						{args}	{ return [Execution $args ARTICLE 1] }
proc __ARTICLE					{args}	{ return [Execution $args ARTICLE 2] }
proc _ARTICLE_					{args}	{ return [Execution $args ARTICLE 3] }
proc __ARTICLE_					{args}	{ return [Execution $args ARTICLE 4] }

proc _aside	 					{args}	{	return [Execution $args aside 0] }
proc aside_						{args}	{ return [Execution $args aside 1] }
proc __aside						{args}	{ return [Execution $args aside 2] }
proc _aside_						{args}	{ return [Execution $args aside 3] }
proc __aside_					{args}	{ return [Execution $args aside 4] }

proc _ASIDE 						{args}	{	return [Execution $args ASIDE 0] }
proc ASIDE_						{args}	{ return [Execution $args ASIDE 1] }
proc __ASIDE						{args}	{ return [Execution $args ASIDE 2] }
proc _ASIDE_						{args}	{ return [Execution $args ASIDE 3] }
proc __ASIDE_					{args}	{ return [Execution $args ASIDE 4] }

proc _audio	 					{args}	{	return [Execution $args audio 0] }
proc audio_						{args}	{ return [Execution $args audio 1] }
proc __audio						{args}	{ return [Execution $args audio 2] }
proc _audio_						{args}	{ return [Execution $args audio 3] }
proc __audio_					{args}	{ return [Execution $args audio 4] }

proc _AUDIO 						{args}	{	return [Execution $args AUDIO 0] }
proc AUDIO_						{args}	{ return [Execution $args AUDIO 1] }
proc __AUDIO						{args}	{ return [Execution $args AUDIO 2] }
proc _AUDIO_						{args}	{ return [Execution $args AUDIO 3] }
proc __AUDIO_					{args}	{ return [Execution $args AUDIO 4] }

proc _b 								{args}	{	return [Execution $args b 0] }
proc b_									{args}	{ return [Execution $args b 1] }
proc __b								{args}	{ return [Execution $args b 2] }
proc _b_								{args}	{ return [Execution $args b 3] }
proc __b_								{args}	{ return [Execution $args b 4] }

proc _B 								{args}	{	return [Execution $args B 0] }
proc B_									{args}	{ return [Execution $args B 1] }
proc __B								{args}	{ return [Execution $args B 2] }
proc _B_								{args}	{ return [Execution $args B 3] }
proc __B_								{args}	{ return [Execution $args B 4] }

proc _base 							{args}	{	return [Execution $args base 0] }
proc base_							{args}	{ return [Execution $args base 1] }
proc __base							{args}	{ return [Execution $args base 2] }
proc _base_							{args}	{ return [Execution $args base 3] }
proc __base_						{args}	{ return [Execution $args base 4] }

proc _BASE 							{args}	{	return [Execution $args BASE 0] }
proc BASE_							{args}	{ return [Execution $args BASE 1] }
proc __BASE							{args}	{ return [Execution $args BASE 2] }
proc _BASE_							{args}	{ return [Execution $args BASE 3] }
proc __BASE_						{args}	{ return [Execution $args BASE 4] }

proc _bb 					{args}	{	return [Execution $args bb 0] }
proc bb_					{args}	{ return [Execution $args bb 1] }
proc __bb					{args}	{ return [Execution $args bb 2] }
proc _bb_					{args}	{ return [Execution $args bb 3] }
proc __bb_				{args}	{ return [Execution $args bb 4] }

proc _BB 					{args}	{	return [Execution $args BB 0] }
proc BB_					{args}	{ return [Execution $args BB 1] }
proc __BB					{args}	{ return [Execution $args BB 2] }
proc _BB_					{args}	{ return [Execution $args BB 3] }
proc __BB_				{args}	{ return [Execution $args BB 4] }

proc _bdo 							{args}	{	return [Execution $args bdo 0] }
proc bdo_								{args}	{ return [Execution $args bdo 1] }
proc __bdo							{args}	{ return [Execution $args bdo 2] }
proc _bdo_							{args}	{ return [Execution $args bdo 3] }
proc __bdo_							{args}	{ return [Execution $args bdo 4] }

proc _BDO 							{args}	{	return [Execution $args BDO 0] }
proc BDO_								{args}	{ return [Execution $args BDO 1] }
proc __BDO							{args}	{ return [Execution $args BDO 2] }
proc _BDO_							{args}	{ return [Execution $args BDO 3] }
proc __BDO_							{args}	{ return [Execution $args BDO 4] }

if 0 {
proc _big 							{args}	{	return [Execution $args big 0] }
proc big_								{args}	{ return [Execution $args big 1] }
proc __big							{args}	{ return [Execution $args big 2] }
proc _big_							{args}	{ return [Execution $args big 3] }
proc __big_							{args}	{ return [Execution $args big 4] }

proc _BIG 							{args}	{	return [Execution $args BIG 0] }
proc BIG_								{args}	{ return [Execution $args BIG 1] }
proc __BIG							{args}	{ return [Execution $args BIG 2] }
proc _BIG_							{args}	{ return [Execution $args BIG 3] }
proc __BIG_							{args}	{ return [Execution $args BIG 4] }

proc _blink 						{args}	{	return [Execution $args blink 0] }
proc blink_							{args}	{ return [Execution $args blink 1] }
proc __blink						{args}	{ return [Execution $args blink 2] }
proc _blink_						{args}	{ return [Execution $args blink 3] }
proc __blink_						{args}	{ return [Execution $args blink 4] }

proc _BLINK 						{args}	{	return [Execution $args BLINK 0] }
proc BLINK_							{args}	{ return [Execution $args BLINK 1] }
proc __BLINK						{args}	{ return [Execution $args BLINK 2] }
proc _BLINK_						{args}	{ return [Execution $args BLINK 3] }
proc __BLINK_						{args}	{ return [Execution $args BLINK 4] }
}

proc _blockquote 				{args}	{	return [Execution $args blockquote 0] }
proc blockquote_				{args}	{ return [Execution $args blockquote 1] }
proc __blockquote				{args}	{ return [Execution $args blockquote 2] }
proc _blockquote_				{args}	{ return [Execution $args blockquote 3] }
proc __blockquote_			{args}	{ return [Execution $args blockquote 4] }

proc _BLOCKQUOTE 				{args}	{	return [Execution $args BLOCKQUOTE 0] }
proc BLOCKQUOTE_				{args}	{ return [Execution $args BLOCKQUOTE 1] }
proc __BLOCKQUOTE				{args}	{ return [Execution $args BLOCKQUOTE 2] }
proc _BLOCKQUOTE_				{args}	{ return [Execution $args BLOCKQUOTE 3] }
proc __BLOCKQUOTE_			{args}	{ return [Execution $args BLOCKQUOTE 4] }

proc _body 							{args}	{	
	Execution $args body 0 
	#puts $::g_channel ""
	outs2 "" 
}
proc body_							{args}	{ return [Execution $args body 1] }
proc __body							{args}	{ return [Execution $args body 2] }
proc _body_							{args}	{ return [Execution $args body 3] }
proc __body_						{args}	{ return [Execution $args body 4] }

proc _BODY 							{args}	{	
	Execution $args BODY 0
	#puts $::g_channel ""
	outs2 ""
}
proc BODY_							{args}	{ return [Execution $args BODY 1] }
proc __BODY							{args}	{ return [Execution $args BODY 2] }
proc _BODY_							{args}	{ return [Execution $args BODY 3] }
proc __BODY_						{args}	{ return [Execution $args BODY 4] }

proc _br 								{args}	{	return [Execution $args br 0] }
proc br_								{args}	{ return [Execution $args br 1] }
proc __br								{args}	{ return [Execution $args br 2] }
proc _br_								{args}	{ return [Execution $args br 3] }
proc __br_							{args}	{ return [Execution $args br 4] }

proc _BR 								{args}	{	return [Execution $args BR 0] }
proc BR_								{args}	{ return [Execution $args BR 1] }
proc __BR								{args}	{ return [Execution $args BR 2] }
proc _BR_								{args}	{ return [Execution $args BR 3] }
proc __BR_							{args}	{ return [Execution $args BR 4] }

proc _button 						{args}	{	return [Execution $args button 0] }
proc button_						{args}	{ return [Execution $args button 1] }
proc __button						{args}	{ return [Execution $args button 2] }
proc _button_						{args}	{ return [Execution $args button 3] }
proc __button_					{args}	{ return [Execution $args button 4] }

proc _BUTTON 						{args}	{	return [Execution $args BUTTON 0] }
proc BUTTON_						{args}	{ return [Execution $args BUTTON 1] }
proc __BUTTON						{args}	{ return [Execution $args BUTTON 2] }
proc _BUTTON_						{args}	{ return [Execution $args BUTTON 3] }
proc __BUTTON_					{args}	{ return [Execution $args BUTTON 4] }

proc _canvas	 					{args}	{	return [Execution $args canvas 0] }
proc canvas_						{args}	{ return [Execution $args canvas 1] }
proc __canvas						{args}	{ return [Execution $args canvas 2] }
proc _canvas_						{args}	{ return [Execution $args canvas 3] }
proc __canvas_					{args}	{ return [Execution $args canvas 4] }

proc _CANVAS 						{args}	{	return [Execution $args CANVAS 0] }
proc CANVAS_						{args}	{ return [Execution $args CANVAS 1] }
proc __CANVAS						{args}	{ return [Execution $args CANVAS 2] }
proc _CANVAS_						{args}	{ return [Execution $args CANVAS 3] }
proc __CANVAS_					{args}	{ return [Execution $args CANVAS 4] }

proc _caption 					{args}	{	return [Execution $args caption 0] }
proc caption_						{args}	{ return [Execution $args caption 1] }
proc __caption					{args}	{ return [Execution $args caption 2] }
proc _caption_					{args}	{ return [Execution $args caption 3] }
proc __caption_					{args}	{ return [Execution $args caption 4] }

proc _CAPTION 					{args}	{	return [Execution $args CAPTION 0] }
proc CAPTION_						{args}	{ return [Execution $args CAPTION 1] }
proc __CAPTION					{args}	{ return [Execution $args CAPTION 2] }
proc _CAPTION_					{args}	{ return [Execution $args CAPTION 3] }
proc __CAPTION_					{args}	{ return [Execution $args CAPTION 4] }

if 0 {
proc _center 						{args}	{	return [Execution $args center 0] }
proc center_						{args}	{ return [Execution $args center 1] }
proc __center						{args}	{ return [Execution $args center 2] }
proc _center_						{args}	{ return [Execution $args center 3] }
proc __center_					{args}	{ return [Execution $args center 4] }

proc _CENTER 						{args}	{	return [Execution $args CENTER 0] }
proc CENTER_						{args}	{ return [Execution $args CENTER 1] }
proc __CENTER						{args}	{ return [Execution $args CENTER 2] }
proc _CENTER_						{args}	{ return [Execution $args CENTER 3] }
proc __CENTER_					{args}	{ return [Execution $args CENTER 4] }
}

proc _cite 							{args}	{	return [Execution $args cite 0] }
proc cite_							{args}	{ return [Execution $args cite 1] }
proc __cite							{args}	{ return [Execution $args cite 2] }
proc _cite_							{args}	{ return [Execution $args cite 3] }
proc __cite_						{args}	{ return [Execution $args cite 4] }

proc _CITE 							{args}	{	return [Execution $args CITE 0] }
proc CITE_							{args}	{ return [Execution $args CITE 1] }
proc __CITE							{args}	{ return [Execution $args CITE 2] }
proc _CITE_							{args}	{ return [Execution $args CITE 3] }
proc __CITE_						{args}	{ return [Execution $args CITE 4] }

proc _code 							{args}	{	return [Execution $args code 0] }
proc code_							{args}	{ return [Execution $args code 1] }
proc __code							{args}	{ return [Execution $args code 2] }
proc _code_							{args}	{ return [Execution $args code 3] }
proc __code_						{args}	{ return [Execution $args code 4] }

proc _CODE 							{args}	{	return [Execution $args CODE 0] }
proc CODE_							{args}	{ return [Execution $args CODE 1] }
proc __CODE							{args}	{ return [Execution $args CODE 2] }
proc _CODE_							{args}	{ return [Execution $args CODE 3] }
proc __CODE_						{args}	{ return [Execution $args CODE 4] }

proc _col 							{args}	{	return [Execution $args col 0] }
proc col_								{args}	{ return [Execution $args col 1] }
proc __col							{args}	{ return [Execution $args col 2] }
proc _col_							{args}	{ return [Execution $args col 3] }
proc __col_							{args}	{ return [Execution $args col 4] }

proc _COL 							{args}	{	return [Execution $args COL 0] }
proc COL_								{args}	{ return [Execution $args COL 1] }
proc __COL							{args}	{ return [Execution $args COL 2] }
proc _COL_							{args}	{ return [Execution $args COL 3] }
proc __COL_							{args}	{ return [Execution $args COL 4] }

proc _colgroup 					{args}	{	return [Execution $args colgroup 0] }
proc colgroup_					{args}	{ return [Execution $args colgroup 1] }
proc __colgroup					{args}	{ return [Execution $args colgroup 2] }
proc _colgroup_					{args}	{ return [Execution $args colgroup 3] }
proc __colgroup_				{args}	{ return [Execution $args colgroup 4] }

proc _COLGROUP 					{args}	{	return [Execution $args COLGROUP 0] }
proc COLGROUP_					{args}	{ return [Execution $args COLGROUP 1] }
proc __COLGROUP					{args}	{ return [Execution $args COLGROUP 2] }
proc _COLGROUP_					{args}	{ return [Execution $args COLGROUP 3] }
proc __COLGROUP_				{args}	{ return [Execution $args COLGROUP 4] }

proc _command	 					{args}	{	return [Execution $args command 0] }
proc command_						{args}	{ return [Execution $args command 1] }
proc __command						{args}	{ return [Execution $args command 2] }
proc _command_						{args}	{ return [Execution $args command 3] }
proc __command_					{args}	{ return [Execution $args command 4] }

proc _COMMAND 						{args}	{	return [Execution $args COMMAND 0] }
proc COMMAND_						{args}	{ return [Execution $args COMMAND 1] }
proc __COMMAND						{args}	{ return [Execution $args COMMAND 2] }
proc _COMMAND_						{args}	{ return [Execution $args COMMAND 3] }
proc __COMMAND_					{args}	{ return [Execution $args COMMAND 4] }

proc _datagrid	 					{args}	{	return [Execution $args datagrid 0] }
proc datagrid_						{args}	{ return [Execution $args datagrid 1] }
proc __datagrid						{args}	{ return [Execution $args datagrid 2] }
proc _datagrid_						{args}	{ return [Execution $args datagrid 3] }
proc __datagrid_					{args}	{ return [Execution $args datagrid 4] }

proc _DATAGRID 						{args}	{	return [Execution $args DATAGRID 0] }
proc DATAGRID_						{args}	{ return [Execution $args DATAGRID 1] }
proc __DATAGRID						{args}	{ return [Execution $args DATAGRID 2] }
proc _DATAGRID_						{args}	{ return [Execution $args DATAGRID 3] }
proc __DATAGRID_					{args}	{ return [Execution $args DATAGRID 4] }

proc _datalist	 					{args}	{	return [Execution $args datalist 0] }
proc datalist_						{args}	{ return [Execution $args datalist 1] }
proc __datalist						{args}	{ return [Execution $args datalist 2] }
proc _datalist_						{args}	{ return [Execution $args datalist 3] }
proc __datalist_					{args}	{ return [Execution $args datalist 4] }

proc _DATALIST 						{args}	{	return [Execution $args DATALIST 0] }
proc DATALIST_						{args}	{ return [Execution $args DATALIST 1] }
proc __DATALIST						{args}	{ return [Execution $args DATALIST 2] }
proc _DATALIST_						{args}	{ return [Execution $args DATALIST 3] }
proc __DATALIST_					{args}	{ return [Execution $args DATALIST 4] }


proc _dd 								{args}	{	return [Execution $args dd 0] }
proc dd_								{args}	{ return [Execution $args dd 1] }
proc __dd								{args}	{ return [Execution $args dd 2] }
proc _dd_								{args}	{ return [Execution $args dd 3] }
proc __dd_							{args}	{ return [Execution $args dd 4] }

proc _DD 								{args}	{	return [Execution $args DD 0] }
proc DD_								{args}	{ return [Execution $args DD 1] }
proc __DD								{args}	{ return [Execution $args DD 2] }
proc _DD_								{args}	{ return [Execution $args DD 3] }
proc __DD_							{args}	{ return [Execution $args DD 4] }

proc _del 							{args}	{	return [Execution $args del 0] }
proc del_								{args}	{ return [Execution $args del 1] }
proc __del							{args}	{ return [Execution $args del 2] }
proc _del_							{args}	{ return [Execution $args del 3] }
proc __del_							{args}	{ return [Execution $args del 4] }

proc _DEL 							{args}	{	return [Execution $args DEL 0] }
proc DEL_								{args}	{ return [Execution $args DEL 1] }
proc __DEL							{args}	{ return [Execution $args DEL 2] }
proc _DEL_							{args}	{ return [Execution $args DEL 3] }
proc __DEL_							{args}	{ return [Execution $args DEL 4] }

proc _details	 					{args}	{	return [Execution $args details 0] }
proc details_						{args}	{ return [Execution $args details 1] }
proc __details						{args}	{ return [Execution $args details 2] }
proc _details_						{args}	{ return [Execution $args details 3] }
proc __details_					{args}	{ return [Execution $args details 4] }

proc _DETAILS 						{args}	{	return [Execution $args DETAILS 0] }
proc DETAILS_						{args}	{ return [Execution $args DETAILS 1] }
proc __DETAILS						{args}	{ return [Execution $args DETAILS 2] }
proc _DETAILS_						{args}	{ return [Execution $args DETAILS 3] }
proc __DETAILS_					{args}	{ return [Execution $args DETAILS 4] }

proc _dialog	 					{args}	{	return [Execution $args dialog 0] }
proc dialog_						{args}	{ return [Execution $args dialog 1] }
proc __dialog						{args}	{ return [Execution $args dialog 2] }
proc _dialog_						{args}	{ return [Execution $args dialog 3] }
proc __dialog_					{args}	{ return [Execution $args dialog 4] }

proc _DIALOG 						{args}	{	return [Execution $args DIALOG 0] }
proc DIALOG_						{args}	{ return [Execution $args DIALOG 1] }
proc __DIALOG						{args}	{ return [Execution $args DIALOG 2] }
proc _DIALOG_						{args}	{ return [Execution $args DIALOG 3] }
proc __DIALOG_					{args}	{ return [Execution $args DIALOG 4] }

proc _dfn 							{args}	{	return [Execution $args dfn 0] }
proc dfn_								{args}	{ return [Execution $args dfn 1] }
proc __dfn							{args}	{ return [Execution $args dfn 2] }
proc _dfn_							{args}	{ return [Execution $args dfn 3] }
proc __dfn_							{args}	{ return [Execution $args dfn 4] }

proc _DFN 							{args}	{	return [Execution $args DFN 0] }
proc DFN_								{args}	{ return [Execution $args DFN 1] }
proc __DFN							{args}	{ return [Execution $args DFN 2] }
proc _DFN_							{args}	{ return [Execution $args DFN 3] }
proc __DFN_							{args}	{ return [Execution $args DFN 4] }

if 0 {
proc _dir 							{args}	{	return [Execution $args dir 0] }
proc dir_								{args}	{ return [Execution $args dir 1] }
proc __dir							{args}	{ return [Execution $args dir 2] }
proc _dir_							{args}	{ return [Execution $args dir 3] }
proc __dir_							{args}	{ return [Execution $args dir 4] }

proc _DIR 							{args}	{	return [Execution $args DIR 0] }
proc DIR_								{args}	{ return [Execution $args DIR 1] }
proc __DIR							{args}	{ return [Execution $args DIR 2] }
proc _DIR_							{args}	{ return [Execution $args DIR 3] }
proc __DIR_							{args}	{ return [Execution $args DIR 4] }
}

proc _div 							{args}	{	return [Execution $args div 0] }
proc div_								{args}	{ return [Execution $args div 1] }
proc __div							{args}	{ return [Execution $args div 2] }
proc _div_							{args}	{ return [Execution $args div 3] }
proc __div_							{args}	{ return [Execution $args div 4] }

proc _DIV 							{args}	{	return [Execution $args DIV 0] }
proc DIV_								{args}	{ return [Execution $args DIV 1] }
proc __DIV							{args}	{ return [Execution $args DIV 2] }
proc _DIV_							{args}	{ return [Execution $args DIV 3] }
proc __DIV_							{args}	{ return [Execution $args DIV 4] }

proc _dl 								{args}	{	return [Execution $args dl 0] }
proc dl_								{args}	{ return [Execution $args dl 1] }
proc __dl								{args}	{ return [Execution $args dl 2] }
proc _dl_								{args}	{ return [Execution $args dl 3] }
proc __dl_							{args}	{ return [Execution $args dl 4] }

proc _DL 								{args}	{	return [Execution $args DL 0] }
proc DL_								{args}	{ return [Execution $args DL 1] }
proc __DL								{args}	{ return [Execution $args DL 2] }
proc _DL_								{args}	{ return [Execution $args DL 3] }
proc __DL_							{args}	{ return [Execution $args DL 4] }

proc _dt 								{args}	{	return [Execution $args dt 0] }
proc dt_								{args}	{ return [Execution $args dt 1] }
proc __dt								{args}	{ return [Execution $args dt 2] }
proc _dt_								{args}	{ return [Execution $args dt 3] }
proc __dt_							{args}	{ return [Execution $args dt 4] }

proc _DT 								{args}	{	return [Execution $args DT 0] }
proc DT_								{args}	{ return [Execution $args DT 1] }
proc __DT								{args}	{ return [Execution $args DT 2] }
proc _DT_								{args}	{ return [Execution $args DT 3] }
proc __DT_							{args}	{ return [Execution $args DT 4] }

proc _em 								{args}	{	return [Execution $args em 0] }
proc em_								{args}	{ return [Execution $args em 1] }
proc __em								{args}	{ return [Execution $args em 2] }
proc _em_								{args}	{ return [Execution $args em 3] }
proc __em_							{args}	{ return [Execution $args em 4] }

proc _EM 								{args}	{	return [Execution $args EM 0] }
proc EM_								{args}	{ return [Execution $args EM 1] }
proc __EM								{args}	{ return [Execution $args EM 2] }
proc _EM_								{args}	{ return [Execution $args EM 3] }
proc __EM_							{args}	{ return [Execution $args EM 4] }

proc _embed	 					{args}	{	return [Execution $args embed 0] }
proc embed_						{args}	{ return [Execution $args embed 1] }
proc __embed						{args}	{ return [Execution $args embed 2] }
proc _embed_						{args}	{ return [Execution $args embed 3] }
proc __embed_					{args}	{ return [Execution $args embed 4] }

proc _EMBED 						{args}	{	return [Execution $args EMBED 0] }
proc EMBED_						{args}	{ return [Execution $args EMBED 1] }
proc __EMBED						{args}	{ return [Execution $args EMBED 2] }
proc _EMBED_						{args}	{ return [Execution $args EMBED 3] }
proc __EMBED_					{args}	{ return [Execution $args EMBED 4] }

proc _eventsource	 					{args}	{	return [Execution $args eventsource 0] }
proc eventsource_						{args}	{ return [Execution $args eventsource 1] }
proc __eventsource						{args}	{ return [Execution $args eventsource 2] }
proc _eventsource_						{args}	{ return [Execution $args eventsource 3] }
proc __eventsource_					{args}	{ return [Execution $args eventsource 4] }

proc _EVENTSOURCE 						{args}	{	return [Execution $args EVENTSOURCE 0] }
proc EVENTSOURCE_						{args}	{ return [Execution $args EVENTSOURCE 1] }
proc __EVENTSOURCE						{args}	{ return [Execution $args EVENTSOURCE 2] }
proc _EVENTSOURCE_						{args}	{ return [Execution $args EVENTSOURCE 3] }
proc __EVENTSOURCE_					{args}	{ return [Execution $args EVENTSOURCE 4] }

proc _fieldset 					{args}	{	return [Execution $args fieldset 0] }
proc fieldset_					{args}	{ return [Execution $args fieldset 1] }
proc __fieldset					{args}	{ return [Execution $args fieldset 2] }
proc _fieldset_					{args}	{ return [Execution $args fieldset 3] }
proc __fieldset_				{args}	{ return [Execution $args fieldset 4] }

proc _FIELDSET 					{args}	{	return [Execution $args FIELDSET 0] }
proc FIELDSET_					{args}	{ return [Execution $args FIELDSET 1] }
proc __FIELDSET					{args}	{ return [Execution $args FIELDSET 2] }
proc _FIELDSET_					{args}	{ return [Execution $args FIELDSET 3] }
proc __FIELDSET_				{args}	{ return [Execution $args FIELDSET 4] }

if 0 {
proc _font 							{args}	{	return [Execution $args font 0] }
proc font_							{args}	{ return [Execution $args font 1] }
proc __font							{args}	{ return [Execution $args font 2] }
proc _font_							{args}	{ return [Execution $args font 3] }
proc __font_						{args}	{ return [Execution $args font 4] }

proc _FONT 							{args}	{	return [Execution $args FONT 0] }
proc FONT_							{args}	{ return [Execution $args FONT 1] }
proc __FONT							{args}	{ return [Execution $args FONT 2] }
proc _FONT_							{args}	{ return [Execution $args FONT 3] }
proc __FONT_						{args}	{ return [Execution $args FONT 4] }
}

proc _figure	 					{args}	{	return [Execution $args figure 0] }
proc figure_						{args}	{ return [Execution $args figure 1] }
proc __figure						{args}	{ return [Execution $args figure 2] }
proc _figure_						{args}	{ return [Execution $args figure 3] }
proc __figure_					{args}	{ return [Execution $args figure 4] }

proc _FIGURE 						{args}	{	return [Execution $args FIGURE 0] }
proc FIGURE_						{args}	{ return [Execution $args FIGURE 1] }
proc __FIGURE						{args}	{ return [Execution $args FIGURE 2] }
proc _FIGURE_						{args}	{ return [Execution $args FIGURE 3] }
proc __FIGURE_					{args}	{ return [Execution $args FIGURE 4] }

proc _footer	 					{args}	{	return [Execution $args footer 0] }
proc footer_						{args}	{ return [Execution $args footer 1] }
proc __footer						{args}	{ return [Execution $args footer 2] }
proc _footer_						{args}	{ return [Execution $args footer 3] }
proc __footer_					{args}	{ return [Execution $args footer 4] }

proc _FOOTER 						{args}	{	return [Execution $args FOOTER 0] }
proc FOOTER_						{args}	{ return [Execution $args FOOTER 1] }
proc __FOOTER						{args}	{ return [Execution $args FOOTER 2] }
proc _FOOTER_						{args}	{ return [Execution $args FOOTER 3] }
proc __FOOTER_					{args}	{ return [Execution $args FOOTER 4] }

proc _form 							{args}	{	return [Execution $args form 0] }
proc form_							{args}	{ return [Execution $args form 1] }
proc __form							{args}	{ return [Execution $args form 2] }
proc _form_							{args}	{ return [Execution $args form 3] }
proc __form_						{args}	{ return [Execution $args form 4] }

proc _FORM 							{args}	{	return [Execution $args FORM 0] }
proc FORM_							{args}	{ return [Execution $args FORM 1] }
proc __FORM							{args}	{ return [Execution $args FORM 2] }
proc _FORM_							{args}	{ return [Execution $args FORM 3] }
proc __FORM_						{args}	{ return [Execution $args FORM 4] }

if 0 {
proc _frame 						{args}	{	return [Execution $args frame 0] }
proc frame_							{args}	{ return [Execution $args frame 1] }
proc __frame						{args}	{ return [Execution $args frame 2] }
proc _frame_						{args}	{ return [Execution $args frame 3] }
proc __frame_						{args}	{ return [Execution $args frame 4] }

proc _FRAME 						{args}	{	return [Execution $args FRAME 0] }
proc FRAME_							{args}	{ return [Execution $args FRAME 1] }
proc __FRAME						{args}	{ return [Execution $args FRAME 2] }
proc _FRAME_						{args}	{ return [Execution $args FRAME 3] }
proc __FRAME_						{args}	{ return [Execution $args FRAME 4] }

proc _frameset 					{args}	{	return [Execution $args frameset 0] }
proc frameset_					{args}	{ return [Execution $args frameset 1] }
proc __frameset					{args}	{ return [Execution $args frameset 2] }
proc _frameset_					{args}	{ return [Execution $args frameset 3] }
proc __frameset_				{args}	{ return [Execution $args frameset 4] }

proc _FRAMESET 					{args}	{	return [Execution $args FRAMESET 0] }
proc FRAMESET_					{args}	{ return [Execution $args FRAMESET 1] }
proc __FRAMESET					{args}	{ return [Execution $args FRAMESET 2] }
proc _FRAMESET_					{args}	{ return [Execution $args FRAMESET 3] }
proc __FRAMESET_				{args}	{ return [Execution $args FRAMESET 4] }
}

proc _h1 								{args}	{	return [Execution $args h1 0] }
proc h1_								{args}	{ return [Execution $args h1 1] }
proc __h1								{args}	{ return [Execution $args h1 2] }
proc _h1_								{args}	{ return [Execution $args h1 3] }
proc __h1_							{args}	{ return [Execution $args h1 4] }

proc _H1 								{args}	{	return [Execution $args H1 0] }
proc H1_								{args}	{ return [Execution $args H1 1] }
proc __H1								{args}	{ return [Execution $args H1 2] }
proc _H1_								{args}	{ return [Execution $args H1 3] }
proc __H1_							{args}	{ return [Execution $args H1 4] }

proc _h2 								{args}	{	return [Execution $args h2 0] }
proc h2_								{args}	{ return [Execution $args h2 1] }
proc __h2								{args}	{ return [Execution $args h2 2] }
proc _h2_								{args}	{ return [Execution $args h2 3] }
proc __h2_							{args}	{ return [Execution $args h2 4] }

proc _H2 								{args}	{	return [Execution $args H2 0] }
proc H2_								{args}	{ return [Execution $args H2 1] }
proc __H2								{args}	{ return [Execution $args H2 2] }
proc _H2_								{args}	{ return [Execution $args H2 3] }
proc __H2_							{args}	{ return [Execution $args H2 4] }

proc _h3 								{args}	{	return [Execution $args h3 0] }
proc h3_								{args}	{ return [Execution $args h3 1] }
proc __h3								{args}	{ return [Execution $args h3 2] }
proc _h3_								{args}	{ return [Execution $args h3 3] }
proc __h3_							{args}	{ return [Execution $args h3 4] }

proc _H3 								{args}	{	return [Execution $args H3 0] }
proc H3_								{args}	{ return [Execution $args H3 1] }
proc __H3								{args}	{ return [Execution $args H3 2] }
proc _H3_								{args}	{ return [Execution $args H3 3] }
proc __H3_							{args}	{ return [Execution $args H3 4] }

proc _h4 								{args}	{	return [Execution $args h4 0] }
proc h4_								{args}	{ return [Execution $args h4 1] }
proc __h4								{args}	{ return [Execution $args h4 2] }
proc _h4_								{args}	{ return [Execution $args h4 3] }
proc __h4_							{args}	{ return [Execution $args h4 4] }

proc _H4 								{args}	{	return [Execution $args H4 0] }
proc H4_								{args}	{ return [Execution $args H4 1] }
proc __H4								{args}	{ return [Execution $args H4 2] }
proc _H4_								{args}	{ return [Execution $args H4 3] }
proc __H4_							{args}	{ return [Execution $args H4 4] }

proc _h5 								{args}	{	return [Execution $args h5 0] }
proc h5_								{args}	{ return [Execution $args h5 1] }
proc __h5								{args}	{ return [Execution $args h5 2] }
proc _h5_								{args}	{ return [Execution $args h5 3] }
proc __h5_							{args}	{ return [Execution $args h5 4] }

proc _H5 								{args}	{	return [Execution $args H5 0] }
proc H5_								{args}	{ return [Execution $args H5 1] }
proc __H5								{args}	{ return [Execution $args H5 2] }
proc _H5_								{args}	{ return [Execution $args H5 3] }
proc __H5_							{args}	{ return [Execution $args H5 4] }

proc _h6 								{args}	{	return [Execution $args h6 0] }
proc h6_								{args}	{ return [Execution $args h6 1] }
proc __h6								{args}	{ return [Execution $args h6 2] }
proc _h6_								{args}	{ return [Execution $args h6 3] }
proc __h6_							{args}	{ return [Execution $args h6 4] }

proc _H6 								{args}	{	return [Execution $args H6 0] }
proc H6_								{args}	{ return [Execution $args H6 1] }
proc __H6								{args}	{ return [Execution $args H6 2] }
proc _H6_								{args}	{ return [Execution $args H6 3] }
proc __H6_							{args}	{ return [Execution $args H6 4] }

proc _head 							{args}	{	
	Execution $args head 0
	#puts $::g_channel ""
	outs2 ""
}
proc head_							{args}	{ return [Execution $args head 1] }
proc __head							{args}	{ return [Execution $args head 2] }
proc _head_							{args}	{ return [Execution $args head 3] }
proc __head_						{args}	{ return [Execution $args head 4] }

proc _HEAD 							{args}	{	
	Execution $args HEAD 0 
	#puts $::g_channel ""
	outs2 ""
}
proc HEAD_							{args}	{ return [Execution $args HEAD 1] }
proc __HEAD							{args}	{ return [Execution $args HEAD 2] }
proc _HEAD_							{args}	{ return [Execution $args HEAD 3] }
proc __HEAD_						{args}	{ return [Execution $args HEAD 4] }

proc _header	 					{args}	{	return [Execution $args header 0] }
proc header_						{args}	{ return [Execution $args header 1] }
proc __header						{args}	{ return [Execution $args header 2] }
proc _header_						{args}	{ return [Execution $args header 3] }
proc __header_					{args}	{ return [Execution $args header 4] }

proc _HEADER 						{args}	{	return [Execution $args HEADER 0] }
proc HEADER_						{args}	{ return [Execution $args HEADER 1] }
proc __HEADER						{args}	{ return [Execution $args HEADER 2] }
proc _HEADER_						{args}	{ return [Execution $args HEADER 3] }
proc __HEADER_					{args}	{ return [Execution $args HEADER 4] }

proc _hr 								{args}	{	return [Execution $args hr 0] }
proc hr_								{args}	{ return [Execution $args hr 1] }
proc __hr								{args}	{ return [Execution $args hr 2] }
proc _hr_								{args}	{ return [Execution $args hr 3] }
proc __hr_							{args}	{ return [Execution $args hr 4] }

proc _HR 								{args}	{	return [Execution $args HR 0] }
proc HR_								{args}	{ return [Execution $args HR 1] }
proc __HR								{args}	{ return [Execution $args HR 2] }
proc _HR_								{args}	{ return [Execution $args HR 3] }
proc __HR_							{args}	{ return [Execution $args HR 4] }

proc _html 							{args}	{	
	Execution $args html 0
	# puts ""
}
proc html_							{args}	{ 
	global g_channel
	global g_string

	Execution $args html 1
	#puts $g_channel "\n"
	outs2 "\n"

	if {!$g_string} {
		if {[string compare $g_channel stdout] != 0} {
			flush $g_channel
			close $g_channel
			# exit 0
		}
	}
}
proc __html							{args}	{ return [Execution $args html 2] }
proc _html_							{args}	{ return [Execution $args html 3] }
proc __html_						{args}	{ return [Execution $args html 4] }

proc _HTML 							{args}	{	
	Execution $args HTML 0 
	# puts ""
}
proc HTML_							{args}	{ 
	global g_channel
	Execution $args HTML 1
	#puts $g_channel "\n"
	outs2 "\n"

	if {!$g_string} {
		if {[string compare $g_channel stdout] != 0} {
			flush $g_channel			
			close $g_channel
			#exit 0
		}
	}
}
proc __HTML							{args}	{ return [Execution $args HTML 2] }
proc _HTML_							{args}	{ return [Execution $args HTML 3] }
proc __HTML_						{args}	{ return [Execution $args HTML 4] }

proc _i 								{args}	{	return [Execution $args i 0] }
proc i_									{args}	{ return [Execution $args i 1] }
proc __i								{args}	{ return [Execution $args i 2] }
proc _i_								{args}	{ return [Execution $args i 3] }
proc __i_								{args}	{ return [Execution $args i 4] }

proc _I 								{args}	{	return [Execution $args I 0] }
proc I_									{args}	{ return [Execution $args I 1] }
proc __I								{args}	{ return [Execution $args I 2] }
proc _I_								{args}	{ return [Execution $args I 3] }
proc __I_								{args}	{ return [Execution $args I 4] }

proc _iframe 						{args}	{	return [Execution $args iframe 0] }
proc iframe_						{args}	{ return [Execution $args iframe 1] }
proc __iframe						{args}	{ return [Execution $args iframe 2] }
proc _iframe_						{args}	{ return [Execution $args iframe 3] }
proc __iframe_					{args}	{ return [Execution $args iframe 4] }

proc _IFRAME 						{args}	{	return [Execution $args IFRAME 0] }
proc IFRAME_						{args}	{ return [Execution $args IFRAME 1] }
proc __IFRAME						{args}	{ return [Execution $args IFRAME 2] }
proc _IFRAME_						{args}	{ return [Execution $args IFRAME 3] }
proc __IFRAME_					{args}	{ return [Execution $args IFRAME 4] }

proc _img 							{args}	{	return [Execution $args img 0] }
proc img_								{args}	{ return [Execution $args img 1] }
proc __img							{args}	{ return [Execution $args img 2] }
proc _img_							{args}	{ return [Execution $args img 3] }
proc __img_							{args}	{ return [Execution $args img 4] }

proc _IMG 							{args}	{	return [Execution $args IMG 0] }
proc IMG_								{args}	{ return [Execution $args IMG 1] }
proc __IMG							{args}	{ return [Execution $args IMG 2] }
proc _IMG_							{args}	{ return [Execution $args IMG 3] }
proc __IMG_							{args}	{ return [Execution $args IMG 4] }

proc _input 						{args}	{	return [Execution $args input 0] }
proc input_							{args}	{ return [Execution $args input 1] }
proc __input						{args}	{ return [Execution $args input 2] }
proc _input_						{args}	{ return [Execution $args input 3] }
proc __input_						{args}	{ return [Execution $args input 4] }

proc _INPUT 						{args}	{	return [Execution $args INPUT 0] }
proc INPUT_							{args}	{ return [Execution $args INPUT 1] }
proc __INPUT						{args}	{ return [Execution $args INPUT 2] }
proc _INPUT_						{args}	{ return [Execution $args INPUT 3] }
proc __INPUT_						{args}	{ return [Execution $args INPUT 4] }

proc _ins 							{args}	{	return [Execution $args ins 0] }
proc ins_								{args}	{ return [Execution $args ins 1] }
proc __ins							{args}	{ return [Execution $args ins 2] }
proc _ins_							{args}	{ return [Execution $args ins 3] }
proc __ins_							{args}	{ return [Execution $args ins 4] }

proc _INS 							{args}	{	return [Execution $args INS 0] }
proc INS_								{args}	{ return [Execution $args INS 1] }
proc __INS							{args}	{ return [Execution $args INS 2] }
proc _INS_							{args}	{ return [Execution $args INS 3] }
proc __INS_							{args}	{ return [Execution $args INS 4] }

if 0 {
proc _isindex 					{args}	{	return [Execution $args isindex 0] }
proc isindex_						{args}	{ return [Execution $args isindex 1] }
proc __isindex					{args}	{ return [Execution $args isindex 2] }
proc _isindex_					{args}	{ return [Execution $args isindex 3] }
proc __isindex_					{args}	{ return [Execution $args isindex 4] }

proc _ISINDEX 					{args}	{	return [Execution $args ISINDEX 0] }
proc ISINDEX_						{args}	{ return [Execution $args ISINDEX 1] }
proc __ISINDEX					{args}	{ return [Execution $args ISINDEX 2] }
proc _ISINDEX_					{args}	{ return [Execution $args ISINDEX 3] }
proc __ISINDEX_					{args}	{ return [Execution $args ISINDEX 4] }
}

proc _kbd 							{args}	{	return [Execution $args kbd 0] }
proc kbd_								{args}	{ return [Execution $args kbd 1] }
proc __kbd							{args}	{ return [Execution $args kbd 2] }
proc _kbd_							{args}	{ return [Execution $args kbd 3] }
proc __kbd_							{args}	{ return [Execution $args kbd 4] }

proc _KBD 							{args}	{	return [Execution $args KBD 0] }
proc KBD_								{args}	{ return [Execution $args KBD 1] }
proc __KBD							{args}	{ return [Execution $args KBD 2] }
proc _KBD_							{args}	{ return [Execution $args KBD 3] }
proc __KBD_							{args}	{ return [Execution $args KBD 4] }

proc _label 						{args}	{	return [Execution $args label 0] }
proc label_							{args}	{ return [Execution $args label 1] }
proc __label						{args}	{ return [Execution $args label 2] }
proc _label_						{args}	{ return [Execution $args label 3] }
proc __label_						{args}	{ return [Execution $args label 4] }

proc _LABEL 						{args}	{	return [Execution $args LABEL 0] }
proc LABEL_							{args}	{ return [Execution $args LABEL 1] }
proc __LABEL						{args}	{ return [Execution $args LABEL 2] }
proc _LABEL_						{args}	{ return [Execution $args LABEL 3] }
proc __LABEL_						{args}	{ return [Execution $args LABEL 4] }

proc _legend 						{args}	{	return [Execution $args legend 0] }
proc legend_						{args}	{ return [Execution $args legend 1] }
proc __legend						{args}	{ return [Execution $args legend 2] }
proc _legend_						{args}	{ return [Execution $args legend 3] }
proc __legend_					{args}	{ return [Execution $args legend 4] }

proc _LEGEND 						{args}	{	return [Execution $args LEGEND 0] }
proc LEGEND_						{args}	{ return [Execution $args LEGEND 1] }
proc __LEGEND						{args}	{ return [Execution $args LEGEND 2] }
proc _LEGEND_						{args}	{ return [Execution $args LEGEND 3] }
proc __LEGEND_					{args}	{ return [Execution $args LEGEND 4] }

proc _li 								{args}	{	return [Execution $args li 0] }
proc li_								{args}	{ return [Execution $args li 1] }
proc __li								{args}	{ return [Execution $args li 2] }
proc _li_								{args}	{ return [Execution $args li 3] }
proc __li_							{args}	{ return [Execution $args li 4] }

proc _LI 								{args}	{	return [Execution $args LI 0] }
proc LI_								{args}	{ return [Execution $args LI 1] }
proc __LI								{args}	{ return [Execution $args LI 2] }
proc _LI_								{args}	{ return [Execution $args LI 3] }
proc __LI_							{args}	{ return [Execution $args LI 4] }

proc _link 							{args}	{	return [Execution $args link 0] }
proc link_							{args}	{ return [Execution $args link 1] }
proc __link							{args}	{ return [Execution $args link 2] }
proc _link_							{args}	{ return [Execution $args link 3] }
proc __link_						{args}	{ return [Execution $args link 4] }

proc _LINK 							{args}	{	return [Execution $args LINK 0] }
proc LINK_							{args}	{ return [Execution $args LINK 1] }
proc __LINK							{args}	{ return [Execution $args LINK 2] }
proc _LINK_							{args}	{ return [Execution $args LINK 3] }
proc __LINK_						{args}	{ return [Execution $args LINK 4] }

proc _mark	 					{args}	{	return [Execution $args mark 0] }
proc mark_						{args}	{ return [Execution $args mark 1] }
proc __mark						{args}	{ return [Execution $args mark 2] }
proc _mark_						{args}	{ return [Execution $args mark 3] }
proc __mark_					{args}	{ return [Execution $args mark 4] }

proc _MARK 						{args}	{	return [Execution $args MARK 0] }
proc MARK_						{args}	{ return [Execution $args MARK 1] }
proc __MARK						{args}	{ return [Execution $args MARK 2] }
proc _MARK_						{args}	{ return [Execution $args MARK 3] }
proc __MARK_					{args}	{ return [Execution $args MARK 4] }

proc _map 							{args}	{	return [Execution $args map 0] }
proc map_								{args}	{ return [Execution $args map 1] }
proc __map							{args}	{ return [Execution $args map 2] }
proc _map_							{args}	{ return [Execution $args map 3] }
proc __map_							{args}	{ return [Execution $args map 4] }

proc _MAP 							{args}	{	return [Execution $args MAP 0] }
proc MAP_								{args}	{ return [Execution $args MAP 1] }
proc __MAP							{args}	{ return [Execution $args MAP 2] }
proc _MAP_							{args}	{ return [Execution $args MAP 3] }
proc __MAP_							{args}	{ return [Execution $args MAP 4] }

proc _menu 							{args}	{	return [Execution $args menu 0] }
proc menu_							{args}	{ return [Execution $args menu 1] }
proc __menu							{args}	{ return [Execution $args menu 2] }
proc _menu_							{args}	{ return [Execution $args menu 3] }
proc __menu_						{args}	{ return [Execution $args menu 4] }

proc _MENU 							{args}	{	return [Execution $args MENU 0] }
proc MENU_							{args}	{ return [Execution $args MENU 1] }
proc __MENU							{args}	{ return [Execution $args MENU 2] }
proc _MENU_							{args}	{ return [Execution $args MENU 3] }
proc __MENU_						{args}	{ return [Execution $args MENU 4] }

proc _meta 							{args}	{	return [Execution $args meta 0] }
proc meta_							{args}	{ return [Execution $args meta 1] }
proc __meta							{args}	{ return [Execution $args meta 2] }
proc _meta_							{args}	{ return [Execution $args meta 3] }
proc __meta_						{args}	{ return [Execution $args meta 4] }

proc _META 							{args}	{	return [Execution $args META 0] }
proc META_							{args}	{ return [Execution $args META 1] }
proc __META							{args}	{ return [Execution $args META 2] }
proc _META_							{args}	{ return [Execution $args META 3] }
proc __META_						{args}	{ return [Execution $args META 4] }

proc _meter	 					{args}	{	return [Execution $args meter 0] }
proc meter_						{args}	{ return [Execution $args meter 1] }
proc __meter						{args}	{ return [Execution $args meter 2] }
proc _meter_						{args}	{ return [Execution $args meter 3] }
proc __meter_					{args}	{ return [Execution $args meter 4] }

proc _METER 						{args}	{	return [Execution $args METER 0] }
proc METER_						{args}	{ return [Execution $args METER 1] }
proc __METER						{args}	{ return [Execution $args METER 2] }
proc _METER_						{args}	{ return [Execution $args METER 3] }
proc __METER_					{args}	{ return [Execution $args METER 4] }

proc _nav	 					{args}	{	return [Execution $args nav 0] }
proc nav_						{args}	{ return [Execution $args nav 1] }
proc __nav						{args}	{ return [Execution $args nav 2] }
proc _nav_						{args}	{ return [Execution $args nav 3] }
proc __nav_					{args}	{ return [Execution $args nav 4] }

proc _NAV 						{args}	{	return [Execution $args NAV 0] }
proc NAV_						{args}	{ return [Execution $args NAV 1] }
proc __NAV						{args}	{ return [Execution $args NAV 2] }
proc _NAV_						{args}	{ return [Execution $args NAV 3] }
proc __NAV_					{args}	{ return [Execution $args NAV 4] }

if 0 {
proc _noframes 					{args}	{	return [Execution $args noframes 0] }
proc noframes_					{args}	{ return [Execution $args noframes 1] }
proc __noframes					{args}	{ return [Execution $args noframes 2] }
proc _noframes_					{args}	{ return [Execution $args noframes 3] }
proc __noframes_				{args}	{ return [Execution $args noframes 4] }

proc _NOFRAMES 					{args}	{	return [Execution $args NOFRAMES 0] }
proc NOFRAMES_					{args}	{ return [Execution $args NOFRAMES 1] }
proc __NOFRAMES					{args}	{ return [Execution $args NOFRAMES 2] }
proc _NOFRAMES_					{args}	{ return [Execution $args NOFRAMES 3] }
proc __NOFRAMES_				{args}	{ return [Execution $args NOFRAMES 4] }
}

proc _noscript 					{args}	{	return [Execution $args noscript 0] }
proc noscript_					{args}	{ return [Execution $args noscript 1] }
proc __noscript					{args}	{ return [Execution $args noscript 2] }
proc _noscript_					{args}	{ return [Execution $args noscript 3] }
proc __noscript_				{args}	{ return [Execution $args noscript 4] }

proc _NOSCRIPT 					{args}	{	return [Execution $args NOSCRIPT 0] }
proc NOSCRIPT_					{args}	{ return [Execution $args NOSCRIPT 1] }
proc __NOSCRIPT					{args}	{ return [Execution $args NOSCRIPT 2] }
proc _NOSCRIPT_					{args}	{ return [Execution $args NOSCRIPT 3] }
proc __NOSCRIPT_				{args}	{ return [Execution $args NOSCRIPT 4] }

proc _object 						{args}	{	return [Execution $args object 0] }
proc object_						{args}	{ return [Execution $args object 1] }
proc __object						{args}	{ return [Execution $args object 2] }
proc _object_						{args}	{ return [Execution $args object 3] }
proc __object_					{args}	{ return [Execution $args object 4] }

proc _OBJECT 						{args}	{	return [Execution $args OBJECT 0] }
proc OBJECT_						{args}	{ return [Execution $args OBJECT 1] }
proc __OBJECT						{args}	{ return [Execution $args OBJECT 2] }
proc _OBJECT_						{args}	{ return [Execution $args OBJECT 3] }
proc __OBJECT_					{args}	{ return [Execution $args OBJECT 4] }

proc _ol 								{args}	{	return [Execution $args ol 0] }
proc ol_								{args}	{ return [Execution $args ol 1] }
proc __ol								{args}	{ return [Execution $args ol 2] }
proc _ol_								{args}	{ return [Execution $args ol 3] }
proc __ol_							{args}	{ return [Execution $args ol 4] }

proc _OL 								{args}	{	return [Execution $args OL 0] }
proc OL_								{args}	{ return [Execution $args OL 1] }
proc __OL								{args}	{ return [Execution $args OL 2] }
proc _OL_								{args}	{ return [Execution $args OL 3] }
proc __OL_							{args}	{ return [Execution $args OL 4] }

proc _optgroup 								{args}	{	return [Execution $args optgroup 0] }
proc optgroup_								{args}	{ return [Execution $args optgroup 1] }
proc __optgroup								{args}	{ return [Execution $args optgroup 2] }
proc _optgroup_								{args}	{ return [Execution $args optgroup 3] }
proc __optgroup_							{args}	{ return [Execution $args optgroup 4] }

proc _OPTGROUP 								{args}	{	return [Execution $args OPTGROUP 0] }
proc OPTGROUP_								{args}	{ return [Execution $args OPTGROUP 1] }
proc __OPTGROUP								{args}	{ return [Execution $args OPTGROUP 2] }
proc _OPTGROUP_								{args}	{ return [Execution $args OPTGROUP 3] }
proc __OPTGROUP_							{args}	{ return [Execution $args OPTGROUP 4] }

proc _option 								{args}	{	return [Execution $args option 0] }
proc option_								{args}	{ return [Execution $args option 1] }
proc __option								{args}	{ return [Execution $args option 2] }
proc _option_								{args}	{ return [Execution $args option 3] }
proc __option_							{args}	{ return [Execution $args option 4] }

proc _OPTION 								{args}	{	return [Execution $args OPTION 0] }
proc OPTION_								{args}	{ return [Execution $args OPTION 1] }
proc __OPTION								{args}	{ return [Execution $args OPTION 2] }
proc _OPTION_								{args}	{ return [Execution $args OPTION 3] }
proc __OPTION_							{args}	{ return [Execution $args OPTION 4] }

proc _output	 					{args}	{	return [Execution $args output 0] }
proc output_						{args}	{ return [Execution $args output 1] }
proc __output						{args}	{ return [Execution $args output 2] }
proc _output_						{args}	{ return [Execution $args output 3] }
proc __output_					{args}	{ return [Execution $args output 4] }

proc _OUTPUT 						{args}	{	return [Execution $args OUTPUT 0] }
proc OUTPUT_						{args}	{ return [Execution $args OUTPUT 1] }
proc __OUTPUT						{args}	{ return [Execution $args OUTPUT 2] }
proc _OUTPUT_						{args}	{ return [Execution $args OUTPUT 3] }
proc __OUTPUT_					{args}	{ return [Execution $args OUTPUT 4] }

proc _p 								{args}	{	return [Execution $args p 0] }
proc p_								{args}	{ return [Execution $args p 1] }
proc __p								{args}	{ return [Execution $args p 2] }
proc _p_								{args}	{ return [Execution $args p 3] }
proc __p_							{args}	{ return [Execution $args p 4] }

proc _P 								{args}	{	return [Execution $args P 0] }
proc P_								{args}	{ return [Execution $args P 1] }
proc __P								{args}	{ return [Execution $args P 2] }
proc _P_								{args}	{ return [Execution $args P 3] }
proc __P_							{args}	{ return [Execution $args P 4] }

proc _param 								{args}	{	return [Execution $args param 0] }
proc param_								{args}	{ return [Execution $args param 1] }
proc __param								{args}	{ return [Execution $args param 2] }
proc _param_								{args}	{ return [Execution $args param 3] }
proc __param_							{args}	{ return [Execution $args param 4] }

proc _PARAM 								{args}	{	return [Execution $args PARAM 0] }
proc PARAM_								{args}	{ return [Execution $args PARAM 1] }
proc __PARAM								{args}	{ return [Execution $args PARAM 2] }
proc _PARAM_								{args}	{ return [Execution $args PARAM 3] }
proc __PARAM_							{args}	{ return [Execution $args PARAM 4] }

proc _pre 								{args}	{	return [Execution $args pre 0] }
proc pre_								{args}	{ return [Execution $args pre 1] }
proc __pre								{args}	{ return [Execution $args pre 2] }
proc _pre_								{args}	{ return [Execution $args pre 3] }
proc __pre_							{args}	{ return [Execution $args pre 4] }

proc _PRE 								{args}	{	return [Execution $args PRE 0] }
proc PRE_								{args}	{ return [Execution $args PRE 1] }
proc __PRE								{args}	{ return [Execution $args PRE 2] }
proc _PRE_								{args}	{ return [Execution $args PRE 3] }
proc __PRE_							{args}	{ return [Execution $args PRE 4] }

proc _progress	 					{args}	{	return [Execution $args progress 0] }
proc progress_						{args}	{ return [Execution $args progress 1] }
proc __progress						{args}	{ return [Execution $args progress 2] }
proc _progress_						{args}	{ return [Execution $args progress 3] }
proc __progress_					{args}	{ return [Execution $args progress 4] }

proc _PROGRESS 						{args}	{	return [Execution $args PROGRESS 0] }
proc PROGRESS_						{args}	{ return [Execution $args PROGRESS 1] }
proc __PROGRESS						{args}	{ return [Execution $args PROGRESS 2] }
proc _PROGRESS_						{args}	{ return [Execution $args PROGRESS 3] }
proc __PROGRESS_					{args}	{ return [Execution $args PROGRESS 4] }

proc _q 								{args}	{	return [Execution $args q 0] }
proc q_								{args}	{ return [Execution $args q 1] }
proc __q								{args}	{ return [Execution $args q 2] }
proc _q_								{args}	{ return [Execution $args q 3] }
proc __q_							{args}	{ return [Execution $args q 4] }

proc _Q 								{args}	{	return [Execution $args Q 0] }
proc Q_								{args}	{ return [Execution $args Q 1] }
proc __Q								{args}	{ return [Execution $args Q 2] }
proc _Q_								{args}	{ return [Execution $args Q 3] }
proc __Q_							{args}	{ return [Execution $args Q 4] }

proc _ruby	 					{args}	{	return [Execution $args ruby 0] }
proc ruby_						{args}	{ return [Execution $args ruby 1] }
proc __ruby						{args}	{ return [Execution $args ruby 2] }
proc _ruby_						{args}	{ return [Execution $args ruby 3] }
proc __ruby_					{args}	{ return [Execution $args ruby 4] }

proc _RUBY 						{args}	{	return [Execution $args RUBY 0] }
proc RUBY_						{args}	{ return [Execution $args RUBY 1] }
proc __RUBY						{args}	{ return [Execution $args RUBY 2] }
proc _RUBY_						{args}	{ return [Execution $args RUBY 3] }
proc __RUBY_					{args}	{ return [Execution $args RUBY 4] }

proc _rp	 					{args}	{	return [Execution $args rp 0] }
proc rp_						{args}	{ return [Execution $args rp 1] }
proc __rp						{args}	{ return [Execution $args rp 2] }
proc _rp_						{args}	{ return [Execution $args rp 3] }
proc __rp_					{args}	{ return [Execution $args rp 4] }

proc _RP 						{args}	{	return [Execution $args RP 0] }
proc RP_						{args}	{ return [Execution $args RP 1] }
proc __RP						{args}	{ return [Execution $args RP 2] }
proc _RP_						{args}	{ return [Execution $args RP 3] }
proc __RP_					{args}	{ return [Execution $args RP 4] }

proc _rt	 					{args}	{	return [Execution $args rt 0] }
proc rt_						{args}	{ return [Execution $args rt 1] }
proc __rt						{args}	{ return [Execution $args rt 2] }
proc _rt_						{args}	{ return [Execution $args rt 3] }
proc __rt_					{args}	{ return [Execution $args rt 4] }

proc _RT 						{args}	{	return [Execution $args RT 0] }
proc RT_						{args}	{ return [Execution $args RT 1] }
proc __RT						{args}	{ return [Execution $args RT 2] }
proc _RT_						{args}	{ return [Execution $args RT 3] }
proc __RT_					{args}	{ return [Execution $args RT 4] }

if 0 {
proc _s 								{args}	{	return [Execution $args s 0] }
proc s_								{args}	{ return [Execution $args s 1] }
proc __s								{args}	{ return [Execution $args s 2] }
proc _s_								{args}	{ return [Execution $args s 3] }
proc __s_							{args}	{ return [Execution $args s 4] }

proc _S 								{args}	{	return [Execution $args S 0] }
proc S_								{args}	{ return [Execution $args S 1] }
proc __S								{args}	{ return [Execution $args S 2] }
proc _S_								{args}	{ return [Execution $args S 3] }
proc __S_							{args}	{ return [Execution $args S 4] }
}

proc _samp 								{args}	{	return [Execution $args samp 0] }
proc samp_								{args}	{ return [Execution $args samp 1] }
proc __samp								{args}	{ return [Execution $args samp 2] }
proc _samp_								{args}	{ return [Execution $args samp 3] }
proc __samp_							{args}	{ return [Execution $args samp 4] }

proc _SAMP 								{args}	{	return [Execution $args SAMP 0] }
proc SAMP_								{args}	{ return [Execution $args SAMP 1] }
proc __SAMP								{args}	{ return [Execution $args SAMP 2] }
proc _SAMP_								{args}	{ return [Execution $args SAMP 3] }
proc __SAMP_							{args}	{ return [Execution $args SAMP 4] }

proc _script 								{args}	{	return [Execution $args script 0] }
proc script_								{args}	{ return [Execution $args script 1] }
proc __script								{args}	{ return [Execution $args script 2] }
proc _script_								{args}	{ return [Execution $args script 3] }
proc __script_							{args}	{ return [Execution $args script 4] }

proc _SCRIPT 								{args}	{	return [Execution $args SCRIPT 0] }
proc SCRIPT_								{args}	{ return [Execution $args SCRIPT 1] }
proc __SCRIPT								{args}	{ return [Execution $args SCRIPT 2] }
proc _SCRIPT_								{args}	{ return [Execution $args SCRIPT 3] }
proc __SCRIPT_							{args}	{ return [Execution $args SCRIPT 4] }

proc _section	 					{args}	{	return [Execution $args section 0] }
proc section_						{args}	{ return [Execution $args section 1] }
proc __section						{args}	{ return [Execution $args section 2] }
proc _section_						{args}	{ return [Execution $args section 3] }
proc __section_					{args}	{ return [Execution $args section 4] }

proc _SECTION 						{args}	{	return [Execution $args SECTION 0] }
proc SECTION_						{args}	{ return [Execution $args SECTION 1] }
proc __SECTION						{args}	{ return [Execution $args SECTION 2] }
proc _SECTION_						{args}	{ return [Execution $args SECTION 3] }
proc __SECTION_					{args}	{ return [Execution $args SECTION 4] }

proc _select 								{args}	{	return [Execution $args select 0] }
proc select_								{args}	{ return [Execution $args select 1] }
proc __select								{args}	{ return [Execution $args select 2] }
proc _select_								{args}	{ return [Execution $args select 3] }
proc __select_							{args}	{ return [Execution $args select 4] }

proc _SELECT 								{args}	{	return [Execution $args SELECT 0] }
proc SELECT_								{args}	{ return [Execution $args SELECT 1] }
proc __SELECT								{args}	{ return [Execution $args SELECT 2] }
proc _SELECT_								{args}	{ return [Execution $args SELECT 3] }
proc __SELECT_							{args}	{ return [Execution $args SELECT 4] }

proc _small 								{args}	{	return [Execution $args small 0] }
proc small_								{args}	{ return [Execution $args small 1] }
proc __small								{args}	{ return [Execution $args small 2] }
proc _small_								{args}	{ return [Execution $args small 3] }
proc __small_							{args}	{ return [Execution $args small 4] }

proc _SMALL 								{args}	{	return [Execution $args SMALL 0] }
proc SMALL_								{args}	{ return [Execution $args SMALL 1] }
proc __SMALL								{args}	{ return [Execution $args SMALL 2] }
proc _SMALL_								{args}	{ return [Execution $args SMALL 3] }
proc __SMALL_							{args}	{ return [Execution $args SMALL 4] }

if 0 {
proc _space 								{args}	{	return [Execution $args space 0] }
proc space_								{args}	{ return [Execution $args space 1] }
proc __space								{args}	{ return [Execution $args space 2] }
proc _space_								{args}	{ return [Execution $args space 3] }
proc __space_							{args}	{ return [Execution $args space 4] }

proc _SPACE 								{args}	{	return [Execution $args SPACE 0] }
proc SPACE_								{args}	{ return [Execution $args SPACE 1] }
proc __SPACE								{args}	{ return [Execution $args SPACE 2] }
proc _SPACE_								{args}	{ return [Execution $args SPACE 3] }
proc __SPACE_							{args}	{ return [Execution $args SPACE 4] }
}

proc _source	 					{args}	{	return [Execution $args source 0] }
proc source_						{args}	{ return [Execution $args source 1] }
proc __source						{args}	{ return [Execution $args source 2] }
proc _source_						{args}	{ return [Execution $args source 3] }
proc __source_					{args}	{ return [Execution $args source 4] }

proc _SOURCE 						{args}	{	return [Execution $args SOURCE 0] }
proc SOURCE_						{args}	{ return [Execution $args SOURCE 1] }
proc __SOURCE						{args}	{ return [Execution $args SOURCE 2] }
proc _SOURCE_						{args}	{ return [Execution $args SOURCE 3] }
proc __SOURCE_					{args}	{ return [Execution $args SOURCE 4] }

proc _span 								{args}	{	return [Execution $args span 0] }
proc span_								{args}	{ return [Execution $args span 1] }
proc __span								{args}	{ return [Execution $args span 2] }
proc _span_								{args}	{ return [Execution $args span 3] }
proc __span_							{args}	{ return [Execution $args span 4] }

proc _SPAN 								{args}	{	return [Execution $args SPAN 0] }
proc SPAN_								{args}	{ return [Execution $args SPAN 1] }
proc __SPAN								{args}	{ return [Execution $args SPAN 2] }
proc _SPAN_								{args}	{ return [Execution $args SPAN 3] }
proc __SPAN_							{args}	{ return [Execution $args SPAN 4] }

if 0 {
proc _strike 								{args}	{	return [Execution $args strike 0] }
proc strike_								{args}	{ return [Execution $args strike 1] }
proc __strike								{args}	{ return [Execution $args strike 2] }
proc _strike_								{args}	{ return [Execution $args strike 3] }
proc __strike_							{args}	{ return [Execution $args strike 4] }

proc _STRIKE 								{args}	{	return [Execution $args STRIKE 0] }
proc STRIKE_								{args}	{ return [Execution $args STRIKE 1] }
proc __STRIKE								{args}	{ return [Execution $args STRIKE 2] }
proc _STRIKE_								{args}	{ return [Execution $args STRIKE 3] }
proc __STRIKE_							{args}	{ return [Execution $args STRIKE 4] }
}

proc _strong 								{args}	{	return [Execution $args strong 0] }
proc strong_								{args}	{ return [Execution $args strong 1] }
proc __strong								{args}	{ return [Execution $args strong 2] }
proc _strong_								{args}	{ return [Execution $args strong 3] }
proc __strong_							{args}	{ return [Execution $args strong 4] }

proc _STRONG 								{args}	{	return [Execution $args STRONG 0] }
proc STRONG_								{args}	{ return [Execution $args STRONG 1] }
proc __STRONG								{args}	{ return [Execution $args STRONG 2] }
proc _STRONG_								{args}	{ return [Execution $args STRONG 3] }
proc __STRONG_							{args}	{ return [Execution $args STRONG 4] }

proc _style 								{args}	{	return [Execution $args style 0] }
proc style_								{args}	{ return [Execution $args style 1] }
proc __style								{args}	{ return [Execution $args style 2] }
proc _style_								{args}	{ return [Execution $args style 3] }
proc __style_							{args}	{ return [Execution $args style 4] }

proc _STYLE 								{args}	{	return [Execution $args STYLE 0] }
proc STYLE_								{args}	{ return [Execution $args STYLE 1] }
proc __STYLE								{args}	{ return [Execution $args STYLE 2] }
proc _STYLE_								{args}	{ return [Execution $args STYLE 3] }
proc __STYLE_							{args}	{ return [Execution $args STYLE 4] }

proc _sub 								{args}	{	return [Execution $args sub 0] }
proc sub_								{args}	{ return [Execution $args sub 1] }
proc __sub								{args}	{ return [Execution $args sub 2] }
proc _sub_								{args}	{ return [Execution $args sub 3] }
proc __sub_							{args}	{ return [Execution $args sub 4] }

proc _SUB 								{args}	{	return [Execution $args SUB 0] }
proc SUB_								{args}	{ return [Execution $args SUB 1] }
proc __SUB								{args}	{ return [Execution $args SUB 2] }
proc _SUB_								{args}	{ return [Execution $args SUB 3] }
proc __SUB_							{args}	{ return [Execution $args SUB 4] }

proc _sup 								{args}	{	return [Execution $args sup 0] }
proc sup_								{args}	{ return [Execution $args sup 1] }
proc __sup								{args}	{ return [Execution $args sup 2] }
proc _sup_								{args}	{ return [Execution $args sup 3] }
proc __sup_							{args}	{ return [Execution $args sup 4] }

proc _SUP 								{args}	{	return [Execution $args SUP 0] }
proc SUP_								{args}	{ return [Execution $args SUP 1] }
proc __SUP								{args}	{ return [Execution $args SUP 2] }
proc _SUP_								{args}	{ return [Execution $args SUP 3] }
proc __SUP_							{args}	{ return [Execution $args SUP 4] }

proc _table 								{args}	{	return [Execution $args table 0] }
proc table_								{args}	{ return [Execution $args table 1] }
proc __table								{args}	{ return [Execution $args table 2] }
proc _table_								{args}	{ return [Execution $args table 3] }
proc __table_							{args}	{ return [Execution $args table 4] }

proc _TABLE 								{args}	{	return [Execution $args TABLE 0] }
proc TABLE_								{args}	{ return [Execution $args TABLE 1] }
proc __TABLE								{args}	{ return [Execution $args TABLE 2] }
proc _TABLE_								{args}	{ return [Execution $args TABLE 3] }
proc __TABLE_							{args}	{ return [Execution $args TABLE 4] }

proc _tbody 								{args}	{	return [Execution $args tbody 0] }
proc tbody_								{args}	{ return [Execution $args tbody 1] }
proc __tbody								{args}	{ return [Execution $args tbody 2] }
proc _tbody_								{args}	{ return [Execution $args tbody 3] }
proc __tbody_							{args}	{ return [Execution $args tbody 4] }

proc _TBODY 								{args}	{	return [Execution $args TBODY 0] }
proc TBODY_								{args}	{ return [Execution $args TBODY 1] }
proc __TBODY								{args}	{ return [Execution $args TBODY 2] }
proc _TBODY_								{args}	{ return [Execution $args TBODY 3] }
proc __TBODY_							{args}	{ return [Execution $args TBODY 4] }

proc _td 								{args}	{	return [Execution $args td 0] }
proc td_								{args}	{ return [Execution $args td 1] }
proc __td								{args}	{ return [Execution $args td 2] }
proc _td_								{args}	{ return [Execution $args td 3] }
proc __td_							{args}	{ return [Execution $args td 4] }

proc _TD 								{args}	{	return [Execution $args TD 0] }
proc TD_								{args}	{ return [Execution $args TD 1] }
proc __TD								{args}	{ return [Execution $args TD 2] }
proc _TD_								{args}	{ return [Execution $args TD 3] }
proc __TD_							{args}	{ return [Execution $args TD 4] }

proc _textarea 								{args}	{	return [Execution $args textarea 0] }
proc textarea_								{args}	{ return [Execution $args textarea 1] }
proc __textarea								{args}	{ return [Execution $args textarea 2] }
proc _textarea_								{args}	{ return [Execution $args textarea 3] }
proc __textarea_							{args}	{ return [Execution $args textarea 4] }

proc _TEXTAREA 								{args}	{	return [Execution $args TEXTAREA 0] }
proc TEXTAREA_								{args}	{ return [Execution $args TEXTAREA 1] }
proc __TEXTAREA								{args}	{ return [Execution $args TEXTAREA 2] }
proc _TEXTAREA_								{args}	{ return [Execution $args TEXTAREA 3] }
proc __TEXTAREA_							{args}	{ return [Execution $args TEXTAREA 4] }

proc _tfoot 								{args}	{	return [Execution $args tfoot 0] }
proc tfoot_								{args}	{ return [Execution $args tfoot 1] }
proc __tfoot								{args}	{ return [Execution $args tfoot 2] }
proc _tfoot_								{args}	{ return [Execution $args tfoot 3] }
proc __tfoot_							{args}	{ return [Execution $args tfoot 4] }

proc _TFOOT 								{args}	{	return [Execution $args TFOOT 0] }
proc TFOOT_								{args}	{ return [Execution $args TFOOT 1] }
proc __TFOOT								{args}	{ return [Execution $args TFOOT 2] }
proc _TFOOT_								{args}	{ return [Execution $args TFOOT 3] }
proc __TFOOT_							{args}	{ return [Execution $args TFOOT 4] }

proc _th 								{args}	{	return [Execution $args th 0] }
proc th_								{args}	{ return [Execution $args th 1] }
proc __th								{args}	{ return [Execution $args th 2] }
proc _th_								{args}	{ return [Execution $args th 3] }
proc __th_							{args}	{ return [Execution $args th 4] }

proc _TH 								{args}	{	return [Execution $args TH 0] }
proc TH_								{args}	{ return [Execution $args TH 1] }
proc __TH								{args}	{ return [Execution $args TH 2] }
proc _TH_								{args}	{ return [Execution $args TH 3] }
proc __TH_							{args}	{ return [Execution $args TH 4] }

proc _thread 								{args}	{	return [Execution $args thread 0] }
proc thread_								{args}	{ return [Execution $args thread 1] }
proc __thread								{args}	{ return [Execution $args thread 2] }
proc _thread_								{args}	{ return [Execution $args thread 3] }
proc __thread_							{args}	{ return [Execution $args thread 4] }

proc _THREAD 								{args}	{	return [Execution $args THREAD 0] }
proc THREAD_								{args}	{ return [Execution $args THREAD 1] }
proc __THREAD								{args}	{ return [Execution $args THREAD 2] }
proc _THREAD_								{args}	{ return [Execution $args THREAD 3] }
proc __THREAD_							{args}	{ return [Execution $args THREAD 4] }

proc _time	 					{args}	{	return [Execution $args time 0] }
proc time_						{args}	{ return [Execution $args time 1] }
proc __time						{args}	{ return [Execution $args time 2] }
proc _time_						{args}	{ return [Execution $args time 3] }
proc __time_					{args}	{ return [Execution $args time 4] }

proc _TIME 						{args}	{	return [Execution $args TIME 0] }
proc TIME_						{args}	{ return [Execution $args TIME 1] }
proc __TIME						{args}	{ return [Execution $args TIME 2] }
proc _TIME_						{args}	{ return [Execution $args TIME 3] }
proc __TIME_					{args}	{ return [Execution $args TIME 4] }

proc _title 								{args}	{	return [Execution $args title 0] }
proc title_								{args}	{ return [Execution $args title 1] }
proc __title								{args}	{ return [Execution $args title 2] }
proc _title_								{args}	{ return [Execution $args title 3] }
proc __title_							{args}	{ return [Execution $args title 4] }

proc _TITLE 								{args}	{	return [Execution $args TITLE 0] }
proc TITLE_								{args}	{ return [Execution $args TITLE 1] }
proc __TITLE								{args}	{ return [Execution $args TITLE 2] }
proc _TITLE_								{args}	{ return [Execution $args TITLE 3] }
proc __TITLE_							{args}	{ return [Execution $args TITLE 4] }

proc _tr 								{args}	{	return [Execution $args tr 0] }
proc tr_								{args}	{ return [Execution $args tr 1] }
proc __tr								{args}	{ return [Execution $args tr 2] }
proc _tr_								{args}	{ return [Execution $args tr 3] }
proc __tr_							{args}	{ return [Execution $args tr 4] }

proc _TR 								{args}	{	return [Execution $args TR 0] }
proc TR_								{args}	{ return [Execution $args TR 1] }
proc __TR								{args}	{ return [Execution $args TR 2] }
proc _TR_								{args}	{ return [Execution $args TR 3] }
proc __TR_							{args}	{ return [Execution $args TR 4] }

if 0 {
proc _tt 								{args}	{	return [Execution $args tt 0] }
proc tt_								{args}	{ return [Execution $args tt 1] }
proc __tt								{args}	{ return [Execution $args tt 2] }
proc _tt_								{args}	{ return [Execution $args tt 3] }
proc __tt_							{args}	{ return [Execution $args tt 4] }

proc _TT 								{args}	{	return [Execution $args TT 0] }
proc TT_								{args}	{ return [Execution $args TT 1] }
proc __TT								{args}	{ return [Execution $args TT 2] }
proc _TT_								{args}	{ return [Execution $args TT 3] }
proc __TT_							{args}	{ return [Execution $args TT 4] }

proc _u 								{args}	{	return [Execution $args u 0] }
proc u_								{args}	{ return [Execution $args u 1] }
proc __u								{args}	{ return [Execution $args u 2] }
proc _u_								{args}	{ return [Execution $args u 3] }
proc __u_							{args}	{ return [Execution $args u 4] }

proc _U 								{args}	{	return [Execution $args U 0] }
proc U_								{args}	{ return [Execution $args U 1] }
proc __U								{args}	{ return [Execution $args U 2] }
proc _U_								{args}	{ return [Execution $args U 3] }
proc __U_							{args}	{ return [Execution $args U 4] }
}

proc _ul 								{args}	{	return [Execution $args ul 0] }
proc ul_								{args}	{ return [Execution $args ul 1] }
proc __ul								{args}	{ return [Execution $args ul 2] }
proc _ul_								{args}	{ return [Execution $args ul 3] }
proc __ul_							{args}	{ return [Execution $args ul 4] }

proc _UL 								{args}	{	return [Execution $args UL 0] }
proc UL_								{args}	{ return [Execution $args UL 1] }
proc __UL								{args}	{ return [Execution $args UL 2] }
proc _UL_								{args}	{ return [Execution $args UL 3] }
proc __UL_							{args}	{ return [Execution $args UL 4] }

proc _var 							{args}	{	return [Execution $args var 0] }
proc var_								{args}	{ return [Execution $args var 1] }
proc __var							{args}	{ return [Execution $args var 2] }
proc _var_							{args}	{ return [Execution $args var 3] }
proc __var_							{args}	{ return [Execution $args var 4] }

proc _VAR 							{args}	{	return [Execution $args VAR 0] }
proc VAR_								{args}	{ return [Execution $args VAR 1] }
proc __VAR							{args}	{ return [Execution $args VAR 2] }
proc _VAR_							{args}	{ return [Execution $args VAR 3] }
proc __VAR_							{args}	{ return [Execution $args VAR 4] }

proc _video	 					{args}	{	return [Execution $args video 0] }
proc video_						{args}	{ return [Execution $args video 1] }
proc __video						{args}	{ return [Execution $args video 2] }
proc _video_						{args}	{ return [Execution $args video 3] }
proc __video_					{args}	{ return [Execution $args video 4] }

proc _VIDEO 						{args}	{	return [Execution $args VIDEO 0] }
proc VIDEO_						{args}	{ return [Execution $args VIDEO 1] }
proc __VIDEO						{args}	{ return [Execution $args VIDEO 2] }
proc _VIDEO_						{args}	{ return [Execution $args VIDEO 3] }
proc __VIDEO_					{args}	{ return [Execution $args VIDEO 4] }

proc _rss 							{args}	{	return [Execution $args rss 0] }
proc rss_								{args}	{ return [Execution $args rss 1] }
proc __rss							{args}	{ return [Execution $args rss 2] }
proc _rss_							{args}	{ return [Execution $args rss 3] }
proc __rss_							{args}	{ return [Execution $args rss 4] }

if 0 {
proc _RSS 							{args}	{	return [Execution $args RSS 0] }
proc RSS_								{args}	{ return [Execution $args RSS 1] }
proc __RSS							{args}	{ return [Execution $args RSS 2] }
proc _RSS_							{args}	{ return [Execution $args RSS 3] }
proc __RSS_							{args}	{ return [Execution $args RSS 4] }

proc _channel 					{args}	{	return [Execution $args channel 0] }
proc channel_						{args}	{ return [Execution $args channel 1] }
proc __channel					{args}	{ return [Execution $args channel 2] }
proc _channel_					{args}	{ return [Execution $args channel 3] }
proc __channel_					{args}	{ return [Execution $args channel 4] }

proc _CHANNEL 					{args}	{	return [Execution $args CHANNEL 0] }
proc CHANNEL_						{args}	{ return [Execution $args CHANNEL 1] }
proc __CHANNEL					{args}	{ return [Execution $args CHANNEL 2] }
proc _CHANNEL_					{args}	{ return [Execution $args CHANNEL 3] }
proc __CHANNEL_					{args}	{ return [Execution $args CHANNEL 4] }

proc _language 					{args}	{	return [Execution $args language 0] }
proc language_					{args}	{ return [Execution $args language 1] }
proc __language					{args}	{ return [Execution $args language 2] }
proc _language_					{args}	{ return [Execution $args language 3] }
proc __language_				{args}	{ return [Execution $args language 4] }

proc _LANGUAGE 					{args}	{	return [Execution $args LANGUAGE 0] }
proc LANGUAGE_					{args}	{ return [Execution $args LANGUAGE 1] }
proc __LANGUAGE					{args}	{ return [Execution $args LANGUAGE 2] }
proc _LANGUAGE_					{args}	{ return [Execution $args LANGUAGE 3] }
proc __LANGUAGE_				{args}	{ return [Execution $args LANGUAGE 4] }

proc _description 			{args}	{	return [Execution $args description 0] }
proc description_				{args}	{ return [Execution $args description 1] }
proc __description			{args}	{ return [Execution $args description 2] }
proc _description_			{args}	{ return [Execution $args description 3] }
proc __description_			{args}	{ return [Execution $args description 4] }

proc _DESCRIPTION 			{args}	{	return [Execution $args DESCRIPTION 0] }
proc DESCRIPTION_				{args}	{ return [Execution $args DESCRIPTION 1] }
proc __DESCRIPTION			{args}	{ return [Execution $args DESCRIPTION 2] }
proc _DESCRIPTION_			{args}	{ return [Execution $args DESCRIPTION 3] }
proc __DESCRIPTION_			{args}	{ return [Execution $args DESCRIPTION 4] }

proc _pubDate 					{args}	{	return [Execution $args pubDate 0] }
proc pubDate_						{args}	{ return [Execution $args pubDate 1] }
proc __pubDate					{args}	{ return [Execution $args pubDate 2] }
proc _pubDate_					{args}	{ return [Execution $args pubDate 3] }
proc __pubDate_					{args}	{ return [Execution $args pubDate 4] }

proc _item 							{args}	{	return [Execution $args item 0] }
proc item_							{args}	{ return [Execution $args item 1] }
proc __item							{args}	{ return [Execution $args item 2] }
proc _item_							{args}	{ return [Execution $args item 3] }
proc __item_						{args}	{ return [Execution $args item 4] }

proc _ITEM 							{args}	{	return [Execution $args ITEM 0] }
proc ITEM_							{args}	{ return [Execution $args ITEM 1] }
proc __ITEM							{args}	{ return [Execution $args ITEM 2] }
proc _ITEM_							{args}	{ return [Execution $args ITEM 3] }
proc __ITEM_						{args}	{ return [Execution $args ITEM 4] }
}

proc _doctype {args} {
	outs2 "<!DOCTYPE [lindex $args 0] ["
	#global g_channel
	#puts $g_channel "<!DOCTYPE [lindex $args 0] ["
}

proc doctype_ {args} {
	outs2 "]>"
	#global g_channel
	#puts $g_channel "]>"
}

proc __doctype {args} {
	outs2 "<!DOCTYPE [lindex $args 0]>"
	#global g_channel
	#puts $g_channel "<!DOCTYPE [lindex $args 0]>"
}

proc _comment {args} {
	outs2 "<!-- "
#	global g_channel
#	puts $g_channel "<!-- "
}

proc comment_ {args} {
	outs2 " -->"
	#global g_channel
	#puts $g_channel " -->"
}

proc __comment {args} {
	outs2 "<!-- [lindex $args 0] -->"
	#global g_channel
	#puts $g_channel "<!-- [lindex $args 0] -->"
}

proc _php {args} {
	outs2 "<?php "
	#global g_channel
	#puts $g_channel "<?php "
}

proc php_ {args} {
	outs2 " ?>"
	#global g_channel
	#puts $g_channel " ?>"
}

proc __php {args} {
	outs2 "<?php [lindex $args 0] ?>"
	#global g_channel
	#puts $g_channel "<?php [lindex $args 0] ?>"
}

proc __pi {args} {
	outs2 "<?[lindex $args 0]?>"
	#global g_channel
	#puts $g_channel "<?[lindex $args 0]?>"
}

proc __cdata {args} {
	outs2 "<!\[CDATA\[ [lindex $args 0] \]\]"
	#global g_channel
	#puts $g_channel "<!\[CDATA\[ [lindex $args 0] \]\]"
}

proc __cgi {args} {
	outs2 "[lindex $args 0]\n\n"
	#global g_channel
	#puts $g_channel "[lindex $args 0]\n\n"
}

proc rule {args} {
	outs2 "[lindex $args 0] {[lindex $args 1]}"
	#global g_channel
	#puts $g_channel "[lindex $args 0] {[lindex $args 1]}"
}

proc _xml {args} {
	global g_channel g_string

	if {$g_string} {
		return
	}

	if {[catch {open [lindex $args 0] "w+"}]} {
		set g_channel stdout
	}
}

proc xml_ {args} {
	global g_channel g_string

	if {$g_string} {
		return
	}

	if {[string compare $g_channel stdout] == 0} {
		return
	}
	flush $g_channel
	close $g_channel
}

proc settag {tag} {
	set ::g_string $tag
}

proc gettag {} {
	return $::g_string
}

proc getchan {} {
	return $::g_channel
}

proc setchan {chan} {
	set ::g_channel $chan
}

#
# output file fileName postfix # file
# output cgi	cgiSpec  postfix # cgi
#
proc output {args} {

	global g_channel g_string

	if {$args == {}} {
		return
	}

	if {[string compare "[lindex $args 0]" "string"] == 0} {
		set g_string 1
		set g_channel ""
		return
	}

	set g_channel stdout

	if {[llength $args] < 2} {
			error "Argument error. Should be [output file fname postfix]"
			return
	}

	set infile [lindex $args 1] 
	if {[llength $args] == 3} {
			set ext [lindex $args 2]
			regsub [file extension $infile] $infile $ext outfile 
			set infile $outfile
	}

	# file
	if {[string compare "[lindex $args 0]" file] == 0} {
		if {[catch {open $infile "w+"} g_channel]} {
			set g_channel stdout
			return
		}
	}	

	# cgi
	if {[string compare "[lindex $args 0]" cgi] == 0} {
		puts $g_channel "$infile\n\n"
		return
	}	

	# sml
	if {[string compare "[lindex $args 0]" sml] == 0} {
		#puts $g_channel "\n\n"
		return
	}	

	# server
	if {[string compare "[lindex $args 0]" http] == 0} {
		set ::g_channel $infile
		quote "HTTP/1.1 200 OK\nContent-Type: text/html\n\n"
		return
	}	

	return
}

proc quote {args} {
	outs "[lindex $args 0]"
#	global g_channel
#	puts -nonewline $g_channel "[lindex $args 0]"
}

proc _xhtml {args} {
# this is compatible with php5
#	__pi "xml version='1.0' encoding='UTF-8'"
	__doctype "html PUBLIC '-//W3C//DTD XHTML 1.0 Strict//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd'"
	_html  "xmlns='http://www.w3.org/1999/xhtml' xml:lang='en' lang='en'"
}

proc xhtml_ {args} {
	html_
}

#
# Report report the exception
# 	status 		server status
# 	keyword 	short description
# 	message 	detail description
#
proc Report {status keyword message} {
  quote "Status: $status; Keyword: $keyword; Message: $message"
}

#
# ParseForm parse CGI string
#   aFormInfo return form data array with key/value.
# Return true or false if error
#
proc ParseForm {aFormInfo} {
  upvar $aFormInfo sFormData

  set sMethod $::env(REQUEST_METHOD)
  switch -exact -- $sMethod {
    POST {set sQuery [read stdin $::env(CONTENT_LENGTH)]}
    GET  {set sQuery $::env(QUERY_STRING)}
    default {Report  500 "server error" "unsupport method"
             return false}
  }

  set pairs [split $sQuery &]

  foreach item $pairs {
    set pair [split $item "="] 
    set key [lindex $pair 0]
    set value [lindex $pair 1]

    regsub -all {\+} $value { } value
    set range {[0-9a-fA-F]}
    while {[regexp "%$range$range" $value match]} {
      scan $match "%%%x" hex
      set symbol [format %c $hex]
      regsub -all $match $value $symbol value
    }

    if {[info exists sFormData($key)]} {
      append sFormData($key) "\0" $value
    } else {
      set sFormData($key) $value
    }
  }
  return true
}

set ::g_string 0
set ::g_channel ""

package provide SnamlScript 5.0

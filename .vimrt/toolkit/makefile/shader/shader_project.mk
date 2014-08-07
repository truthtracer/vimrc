#  ======================================================================================
#  File         : shader_project.mk
#  Author       : Wu Jie 
#  Last Change  : 10/19/2008 | 14:01:11 PM | Sunday,October
#  Description  : 
#  ======================================================================================

# /////////////////////////////////////////////////////////////////////////////
#  Global Configuration
# /////////////////////////////////////////////////////////////////////////////

#  ------------------------------------------------------------------ 
#  Desc: include general config
#  ------------------------------------------------------------------ 

include ../shader_config.mk

# /////////////////////////////////////////////////////////////////////////////
#  User Define
# /////////////////////////////////////////////////////////////////////////////

#  ------------------------------------------------------------------ 
#  Desc: Parent Working Directory
#  ------------------------------------------------------------------ 

CWD := # TODO: relative-address (sample: ..)

#  ------------------------------------------------------------------ 
#  Desc: Project Name
#  ------------------------------------------------------------------ 

Project := # TODO: current directory name

#  ------------------------------------------------------------------ 
#  Desc: Include Path
#  ------------------------------------------------------------------ 

IncDirs += # TODO: relative-address (sample: ./Incs)

#  ------------------------------------------------------------------ 
#  Desc: Source Path
#  ------------------------------------------------------------------ 

SrcDirs += # TODO: relative-address (sample: ./Srcs)

#  ------------------------------------------------------------------ 
#  Desc: Special Flags
# 	Some space-depent directory flag can't generate automatically, use this instead
#  ------------------------------------------------------------------ 

CFlag_Spec += # TODO: (sample: -I"C:/Program Files/Microsoft DirectX SDK/Include")

# /////////////////////////////////////////////////////////////////////////////
#  Shader Entrypoint Name
# /////////////////////////////////////////////////////////////////////////////

#  ------------------------------------------------------------------ 
#  Desc: VS Entrypoint Name
#  ------------------------------------------------------------------ 

VS_ENTRY=VS_Main

#  ------------------------------------------------------------------ 
#  Desc: PS Entrypoint Name
#  ------------------------------------------------------------------ 

PS_ENTRY=PS_Main

#  ------------------------------------------------------------------ 
#  Desc: GS Entrypoint Name
#  ------------------------------------------------------------------ 

GS_ENTRY=GS_Main

#  ------------------------------------------------------------------ 
#  Desc: FX Entrypoint Name
#  ------------------------------------------------------------------ 

FX_ENTRY=FX_Main

# /////////////////////////////////////////////////////////////////////////////
#  Addvance User Define
# /////////////////////////////////////////////////////////////////////////////

#  ------------------------------------------------------------------ 
#  Desc: Parent Working Directory
#  ------------------------------------------------------------------ 

CWD ?= ..

# /////////////////////////////////////////////////////////////////////////////
#  Post Build Even
# 	programme after target been built, this is the project specific one (sample: make_fself $(@) $(basename $(@)).self)
# /////////////////////////////////////////////////////////////////////////////

define POST_BUILD
$(ECHO) Post Build $(Project)...
endef

# /////////////////////////////////////////////////////////////////////////////
#  Rules
# /////////////////////////////////////////////////////////////////////////////

include ../shader_rule.mk

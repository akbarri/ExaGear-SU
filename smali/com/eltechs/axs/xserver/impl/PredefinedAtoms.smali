.class public Lcom/eltechs/axs/xserver/impl/PredefinedAtoms;
.super Ljava/lang/Object;
.source "PredefinedAtoms.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configurePredefinedAtoms(Lcom/eltechs/axs/xserver/AtomsManager;)V
    .locals 68

    const-string v0, "PRIMARY"

    const-string v1, "SECONDARY"

    const-string v2, "ARC"

    const-string v3, "ATOM"

    const-string v4, "BITMAP"

    const-string v5, "CARDINAL"

    const-string v6, "COLORMAP"

    const-string v7, "CURSOR"

    const-string v8, "CUT_BUFFER0"

    const-string v9, "CUT_BUFFER1"

    const-string v10, "CUT_BUFFER2"

    const-string v11, "CUT_BUFFER3"

    const-string v12, "CUT_BUFFER4"

    const-string v13, "CUT_BUFFER5"

    const-string v14, "CUT_BUFFER6"

    const-string v15, "CUT_BUFFER7"

    const-string v16, "DRAWABLE"

    const-string v17, "FONT"

    const-string v18, "INTEGER"

    const-string v19, "PIXMAP"

    const-string v20, "POINT"

    const-string v21, "RECTANGLE"

    const-string v22, "RESOURCE_MANAGER"

    const-string v23, "RGB_COLOR_MAP"

    const-string v24, "RGB_BEST_MAP"

    const-string v25, "RGB_BLUE_MAP"

    const-string v26, "RGB_DEFAULT_MAP"

    const-string v27, "RGB_GRAY_MAP"

    const-string v28, "RGB_GREEN_MAP"

    const-string v29, "RGB_RED_MAP"

    const-string v30, "STRING"

    const-string v31, "VISUALID"

    const-string v32, "WINDOW"

    const-string v33, "WM_COMMAND"

    const-string v34, "WM_HINTS"

    const-string v35, "WM_CLIENT_MACHINE"

    const-string v36, "WM_ICON_NAME"

    const-string v37, "WM_ICON_SIZE"

    const-string v38, "WM_NAME"

    const-string v39, "WM_NORMAL_HINTS"

    const-string v40, "WM_SIZE_HINTS"

    const-string v41, "WM_ZOOM_HINTS"

    const-string v42, "MIN_SPACE"

    const-string v43, "NORM_SPACE"

    const-string v44, "MAX_SPACE"

    const-string v45, "END_SPACE"

    const-string v46, "SUPERSCRIPT_X"

    const-string v47, "SUPERSCRIPT_Y"

    const-string v48, "SUBSCRIPT_X"

    const-string v49, "SUBSCRIPT_Y"

    const-string v50, "UNDERLINE_POSITION"

    const-string v51, "UNDERLINE_THICKNESS"

    const-string v52, "STRIKEOUT_ASCENT"

    const-string v53, "STRIKEOUT_DESCENT"

    const-string v54, "ITALIC_ANGLE"

    const-string v55, "X_HEIGHT"

    const-string v56, "QUAD_WIDTH"

    const-string v57, "WEIGHT"

    const-string v58, "POINT_SIZE"

    const-string v59, "RESOLUTION"

    const-string v60, "COPYRIGHT"

    const-string v61, "NOTICE"

    const-string v62, "FONT_NAME"

    const-string v63, "FAMILY_NAME"

    const-string v64, "FULL_NAME"

    const-string v65, "CAP_HEIGHT"

    const-string v66, "WM_CLASS"

    const-string v67, "WM_TRANSIENT_FOR"

    .line 24
    filled-new-array/range {v0 .. v67}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 95
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    move-object/from16 v4, p0

    .line 97
    invoke-interface {v4, v3}, Lcom/eltechs/axs/xserver/AtomsManager;->internAtom(Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

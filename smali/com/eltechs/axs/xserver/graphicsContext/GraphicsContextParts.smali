.class public final enum Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;
.super Ljava/lang/Enum;
.source "GraphicsContextParts.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;",
        ">;",
        "Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

.field public static final enum ARC_MODE:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

.field public static final enum BACKGROUND:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

.field public static final enum CAP_STYLE:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

.field public static final enum CLIP_MASK:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

.field public static final enum CLIP_X_ORIGIN:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

.field public static final enum CLIP_Y_ORIGIN:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

.field public static final enum DASHES:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

.field public static final enum DASH_OFFSET:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

.field public static final enum FILL_RULE:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

.field public static final enum FILL_STYLE:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

.field public static final enum FONT:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

.field public static final enum FOREGROUND:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

.field public static final enum FUNCTION:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

.field public static final enum GRAPHICS_EXPOSURES:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

.field public static final enum JOIN_STYLE:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

.field public static final enum LINE_STYLE:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

.field public static final enum LINE_WIDTH:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

.field public static final enum PLANE_MASK:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

.field public static final enum STIPPLE:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

.field public static final enum SUBWINDOW_MODE:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

.field public static final enum TILE:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

.field public static final enum TILE_STIPPLE_X_ORIGIN:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

.field public static final enum TILE_STIPPLE_Y_ORIGIN:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;


# instance fields
.field private final flag:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 11
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    const-string v1, "FUNCTION"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->FUNCTION:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    .line 12
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    const-string v1, "PLANE_MASK"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->PLANE_MASK:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    .line 13
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    const-string v1, "FOREGROUND"

    const/4 v5, 0x4

    invoke-direct {v0, v1, v4, v5}, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->FOREGROUND:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    .line 14
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    const-string v1, "BACKGROUND"

    const/4 v6, 0x3

    const/16 v7, 0x8

    invoke-direct {v0, v1, v6, v7}, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->BACKGROUND:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    .line 15
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    const-string v1, "LINE_WIDTH"

    const/16 v8, 0x10

    invoke-direct {v0, v1, v5, v8}, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->LINE_WIDTH:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    .line 16
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    const-string v1, "LINE_STYLE"

    const/4 v9, 0x5

    const/16 v10, 0x20

    invoke-direct {v0, v1, v9, v10}, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->LINE_STYLE:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    .line 17
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    const-string v1, "CAP_STYLE"

    const/4 v10, 0x6

    const/16 v11, 0x40

    invoke-direct {v0, v1, v10, v11}, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->CAP_STYLE:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    .line 18
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    const-string v1, "JOIN_STYLE"

    const/4 v11, 0x7

    const/16 v12, 0x80

    invoke-direct {v0, v1, v11, v12}, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->JOIN_STYLE:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    .line 19
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    const-string v1, "FILL_STYLE"

    const/16 v12, 0x100

    invoke-direct {v0, v1, v7, v12}, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->FILL_STYLE:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    .line 20
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    const-string v1, "FILL_RULE"

    const/16 v12, 0x9

    const/16 v13, 0x200

    invoke-direct {v0, v1, v12, v13}, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->FILL_RULE:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    .line 21
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    const-string v1, "TILE"

    const/16 v13, 0xa

    const/16 v14, 0x400

    invoke-direct {v0, v1, v13, v14}, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->TILE:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    .line 22
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    const-string v1, "STIPPLE"

    const/16 v14, 0xb

    const/16 v15, 0x800

    invoke-direct {v0, v1, v14, v15}, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->STIPPLE:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    .line 23
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    const-string v1, "TILE_STIPPLE_X_ORIGIN"

    const/16 v15, 0xc

    const/16 v14, 0x1000

    invoke-direct {v0, v1, v15, v14}, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->TILE_STIPPLE_X_ORIGIN:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    .line 24
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    const-string v1, "TILE_STIPPLE_Y_ORIGIN"

    const/16 v14, 0xd

    const/16 v15, 0x2000

    invoke-direct {v0, v1, v14, v15}, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->TILE_STIPPLE_Y_ORIGIN:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    .line 25
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    const-string v1, "FONT"

    const/16 v15, 0xe

    const/16 v14, 0x4000

    invoke-direct {v0, v1, v15, v14}, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->FONT:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    .line 26
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    const-string v1, "SUBWINDOW_MODE"

    const/16 v14, 0xf

    const v15, 0x8000

    invoke-direct {v0, v1, v14, v15}, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->SUBWINDOW_MODE:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    .line 27
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    const-string v1, "GRAPHICS_EXPOSURES"

    const/high16 v14, 0x10000

    invoke-direct {v0, v1, v8, v14}, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->GRAPHICS_EXPOSURES:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    .line 28
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    const-string v1, "CLIP_X_ORIGIN"

    const/16 v14, 0x11

    const/high16 v15, 0x20000

    invoke-direct {v0, v1, v14, v15}, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->CLIP_X_ORIGIN:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    .line 29
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    const-string v1, "CLIP_Y_ORIGIN"

    const/16 v14, 0x12

    const/high16 v15, 0x40000

    invoke-direct {v0, v1, v14, v15}, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->CLIP_Y_ORIGIN:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    .line 30
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    const-string v1, "CLIP_MASK"

    const/16 v14, 0x13

    const/high16 v15, 0x80000

    invoke-direct {v0, v1, v14, v15}, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->CLIP_MASK:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    .line 31
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    const-string v1, "DASH_OFFSET"

    const/16 v14, 0x14

    const/high16 v15, 0x100000

    invoke-direct {v0, v1, v14, v15}, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->DASH_OFFSET:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    .line 32
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    const-string v1, "DASHES"

    const/16 v14, 0x15

    const/high16 v15, 0x200000

    invoke-direct {v0, v1, v14, v15}, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->DASHES:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    .line 33
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    const-string v1, "ARC_MODE"

    const/16 v14, 0x16

    const/high16 v15, 0x400000

    invoke-direct {v0, v1, v14, v15}, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->ARC_MODE:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    const/16 v0, 0x17

    .line 9
    new-array v0, v0, [Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->FUNCTION:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->PLANE_MASK:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->FOREGROUND:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    aput-object v1, v0, v4

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->BACKGROUND:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    aput-object v1, v0, v6

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->LINE_WIDTH:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    aput-object v1, v0, v5

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->LINE_STYLE:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    aput-object v1, v0, v9

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->CAP_STYLE:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    aput-object v1, v0, v10

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->JOIN_STYLE:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    aput-object v1, v0, v11

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->FILL_STYLE:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    aput-object v1, v0, v7

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->FILL_RULE:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    aput-object v1, v0, v12

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->TILE:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    aput-object v1, v0, v13

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->STIPPLE:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->TILE_STIPPLE_X_ORIGIN:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->TILE_STIPPLE_Y_ORIGIN:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->FONT:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->SUBWINDOW_MODE:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->GRAPHICS_EXPOSURES:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    aput-object v1, v0, v8

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->CLIP_X_ORIGIN:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->CLIP_Y_ORIGIN:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->CLIP_MASK:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->DASH_OFFSET:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->DASHES:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->ARC_MODE:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->$VALUES:[Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput p3, p0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->flag:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;
    .locals 1

    .line 9
    const-class v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;
    .locals 1

    .line 9
    sget-object v0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->$VALUES:[Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    invoke-virtual {v0}, [Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    return-object v0
.end method


# virtual methods
.method public flagValue()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->flag:I

    return v0
.end method

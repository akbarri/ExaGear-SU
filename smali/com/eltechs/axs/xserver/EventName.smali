.class public final enum Lcom/eltechs/axs/xserver/EventName;
.super Ljava/lang/Enum;
.source "EventName.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/xserver/EventName;",
        ">;",
        "Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/xserver/EventName;

.field public static final enum BUTTON_1_MOTION:Lcom/eltechs/axs/xserver/EventName;

.field public static final enum BUTTON_2_MOTION:Lcom/eltechs/axs/xserver/EventName;

.field public static final enum BUTTON_3_MOTION:Lcom/eltechs/axs/xserver/EventName;

.field public static final enum BUTTON_4_MOTION:Lcom/eltechs/axs/xserver/EventName;

.field public static final enum BUTTON_5_MOTION:Lcom/eltechs/axs/xserver/EventName;

.field public static final enum BUTTON_MOTION:Lcom/eltechs/axs/xserver/EventName;

.field public static final enum BUTTON_PRESS:Lcom/eltechs/axs/xserver/EventName;

.field public static final enum BUTTON_RELEASE:Lcom/eltechs/axs/xserver/EventName;

.field public static final enum COLORMAP_CHANGE:Lcom/eltechs/axs/xserver/EventName;

.field public static final enum ENTER_WINDOW:Lcom/eltechs/axs/xserver/EventName;

.field public static final enum EXPOSURE:Lcom/eltechs/axs/xserver/EventName;

.field public static final enum FOCUS_CHANGE:Lcom/eltechs/axs/xserver/EventName;

.field public static final enum KEYMAP_STATE:Lcom/eltechs/axs/xserver/EventName;

.field public static final enum KEY_PRESS:Lcom/eltechs/axs/xserver/EventName;

.field public static final enum KEY_RELEASE:Lcom/eltechs/axs/xserver/EventName;

.field public static final enum LEAVE_WINDOW:Lcom/eltechs/axs/xserver/EventName;

.field public static final enum OWNER_GRAB_BUTTON:Lcom/eltechs/axs/xserver/EventName;

.field public static final enum POINTER_MOTION:Lcom/eltechs/axs/xserver/EventName;

.field public static final enum POINTER_MOTION_HINT:Lcom/eltechs/axs/xserver/EventName;

.field public static final enum PROPERTY_CHANGE:Lcom/eltechs/axs/xserver/EventName;

.field public static final enum RESIZE_REDIRECT:Lcom/eltechs/axs/xserver/EventName;

.field public static final enum STRUCTURE_NOTIFY:Lcom/eltechs/axs/xserver/EventName;

.field public static final enum SUBSTRUCTURE_NOTIFY:Lcom/eltechs/axs/xserver/EventName;

.field public static final enum SUBSTRUCTURE_REDIRECT:Lcom/eltechs/axs/xserver/EventName;

.field public static final enum VISIBILITY_CHANGE:Lcom/eltechs/axs/xserver/EventName;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 15
    new-instance v0, Lcom/eltechs/axs/xserver/EventName;

    const-string v1, "KEY_PRESS"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/eltechs/axs/xserver/EventName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/EventName;->KEY_PRESS:Lcom/eltechs/axs/xserver/EventName;

    .line 16
    new-instance v0, Lcom/eltechs/axs/xserver/EventName;

    const-string v1, "KEY_RELEASE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/eltechs/axs/xserver/EventName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/EventName;->KEY_RELEASE:Lcom/eltechs/axs/xserver/EventName;

    .line 17
    new-instance v0, Lcom/eltechs/axs/xserver/EventName;

    const-string v1, "BUTTON_PRESS"

    const/4 v5, 0x4

    invoke-direct {v0, v1, v4, v5}, Lcom/eltechs/axs/xserver/EventName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/EventName;->BUTTON_PRESS:Lcom/eltechs/axs/xserver/EventName;

    .line 18
    new-instance v0, Lcom/eltechs/axs/xserver/EventName;

    const-string v1, "BUTTON_RELEASE"

    const/4 v6, 0x3

    const/16 v7, 0x8

    invoke-direct {v0, v1, v6, v7}, Lcom/eltechs/axs/xserver/EventName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/EventName;->BUTTON_RELEASE:Lcom/eltechs/axs/xserver/EventName;

    .line 19
    new-instance v0, Lcom/eltechs/axs/xserver/EventName;

    const-string v1, "ENTER_WINDOW"

    const/16 v8, 0x10

    invoke-direct {v0, v1, v5, v8}, Lcom/eltechs/axs/xserver/EventName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/EventName;->ENTER_WINDOW:Lcom/eltechs/axs/xserver/EventName;

    .line 20
    new-instance v0, Lcom/eltechs/axs/xserver/EventName;

    const-string v1, "LEAVE_WINDOW"

    const/4 v9, 0x5

    const/16 v10, 0x20

    invoke-direct {v0, v1, v9, v10}, Lcom/eltechs/axs/xserver/EventName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/EventName;->LEAVE_WINDOW:Lcom/eltechs/axs/xserver/EventName;

    .line 21
    new-instance v0, Lcom/eltechs/axs/xserver/EventName;

    const-string v1, "POINTER_MOTION"

    const/4 v10, 0x6

    const/16 v11, 0x40

    invoke-direct {v0, v1, v10, v11}, Lcom/eltechs/axs/xserver/EventName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/EventName;->POINTER_MOTION:Lcom/eltechs/axs/xserver/EventName;

    .line 22
    new-instance v0, Lcom/eltechs/axs/xserver/EventName;

    const-string v1, "POINTER_MOTION_HINT"

    const/4 v11, 0x7

    const/16 v12, 0x80

    invoke-direct {v0, v1, v11, v12}, Lcom/eltechs/axs/xserver/EventName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/EventName;->POINTER_MOTION_HINT:Lcom/eltechs/axs/xserver/EventName;

    .line 23
    new-instance v0, Lcom/eltechs/axs/xserver/EventName;

    const-string v1, "BUTTON_1_MOTION"

    const/16 v12, 0x100

    invoke-direct {v0, v1, v7, v12}, Lcom/eltechs/axs/xserver/EventName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/EventName;->BUTTON_1_MOTION:Lcom/eltechs/axs/xserver/EventName;

    .line 24
    new-instance v0, Lcom/eltechs/axs/xserver/EventName;

    const-string v1, "BUTTON_2_MOTION"

    const/16 v12, 0x9

    const/16 v13, 0x200

    invoke-direct {v0, v1, v12, v13}, Lcom/eltechs/axs/xserver/EventName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/EventName;->BUTTON_2_MOTION:Lcom/eltechs/axs/xserver/EventName;

    .line 25
    new-instance v0, Lcom/eltechs/axs/xserver/EventName;

    const-string v1, "BUTTON_3_MOTION"

    const/16 v13, 0xa

    const/16 v14, 0x400

    invoke-direct {v0, v1, v13, v14}, Lcom/eltechs/axs/xserver/EventName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/EventName;->BUTTON_3_MOTION:Lcom/eltechs/axs/xserver/EventName;

    .line 26
    new-instance v0, Lcom/eltechs/axs/xserver/EventName;

    const-string v1, "BUTTON_4_MOTION"

    const/16 v14, 0xb

    const/16 v15, 0x800

    invoke-direct {v0, v1, v14, v15}, Lcom/eltechs/axs/xserver/EventName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/EventName;->BUTTON_4_MOTION:Lcom/eltechs/axs/xserver/EventName;

    .line 27
    new-instance v0, Lcom/eltechs/axs/xserver/EventName;

    const-string v1, "BUTTON_5_MOTION"

    const/16 v15, 0xc

    const/16 v14, 0x1000

    invoke-direct {v0, v1, v15, v14}, Lcom/eltechs/axs/xserver/EventName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/EventName;->BUTTON_5_MOTION:Lcom/eltechs/axs/xserver/EventName;

    .line 28
    new-instance v0, Lcom/eltechs/axs/xserver/EventName;

    const-string v1, "BUTTON_MOTION"

    const/16 v14, 0xd

    const/16 v15, 0x2000

    invoke-direct {v0, v1, v14, v15}, Lcom/eltechs/axs/xserver/EventName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/EventName;->BUTTON_MOTION:Lcom/eltechs/axs/xserver/EventName;

    .line 29
    new-instance v0, Lcom/eltechs/axs/xserver/EventName;

    const-string v1, "KEYMAP_STATE"

    const/16 v15, 0xe

    const/16 v14, 0x4000

    invoke-direct {v0, v1, v15, v14}, Lcom/eltechs/axs/xserver/EventName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/EventName;->KEYMAP_STATE:Lcom/eltechs/axs/xserver/EventName;

    .line 30
    new-instance v0, Lcom/eltechs/axs/xserver/EventName;

    const-string v1, "EXPOSURE"

    const/16 v14, 0xf

    const v15, 0x8000

    invoke-direct {v0, v1, v14, v15}, Lcom/eltechs/axs/xserver/EventName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/EventName;->EXPOSURE:Lcom/eltechs/axs/xserver/EventName;

    .line 31
    new-instance v0, Lcom/eltechs/axs/xserver/EventName;

    const-string v1, "VISIBILITY_CHANGE"

    const/high16 v14, 0x10000

    invoke-direct {v0, v1, v8, v14}, Lcom/eltechs/axs/xserver/EventName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/EventName;->VISIBILITY_CHANGE:Lcom/eltechs/axs/xserver/EventName;

    .line 32
    new-instance v0, Lcom/eltechs/axs/xserver/EventName;

    const-string v1, "STRUCTURE_NOTIFY"

    const/16 v14, 0x11

    const/high16 v15, 0x20000

    invoke-direct {v0, v1, v14, v15}, Lcom/eltechs/axs/xserver/EventName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/EventName;->STRUCTURE_NOTIFY:Lcom/eltechs/axs/xserver/EventName;

    .line 33
    new-instance v0, Lcom/eltechs/axs/xserver/EventName;

    const-string v1, "RESIZE_REDIRECT"

    const/16 v14, 0x12

    const/high16 v15, 0x40000

    invoke-direct {v0, v1, v14, v15}, Lcom/eltechs/axs/xserver/EventName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/EventName;->RESIZE_REDIRECT:Lcom/eltechs/axs/xserver/EventName;

    .line 34
    new-instance v0, Lcom/eltechs/axs/xserver/EventName;

    const-string v1, "SUBSTRUCTURE_NOTIFY"

    const/16 v14, 0x13

    const/high16 v15, 0x80000

    invoke-direct {v0, v1, v14, v15}, Lcom/eltechs/axs/xserver/EventName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/EventName;->SUBSTRUCTURE_NOTIFY:Lcom/eltechs/axs/xserver/EventName;

    .line 35
    new-instance v0, Lcom/eltechs/axs/xserver/EventName;

    const-string v1, "SUBSTRUCTURE_REDIRECT"

    const/16 v14, 0x14

    const/high16 v15, 0x100000

    invoke-direct {v0, v1, v14, v15}, Lcom/eltechs/axs/xserver/EventName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/EventName;->SUBSTRUCTURE_REDIRECT:Lcom/eltechs/axs/xserver/EventName;

    .line 36
    new-instance v0, Lcom/eltechs/axs/xserver/EventName;

    const-string v1, "FOCUS_CHANGE"

    const/16 v14, 0x15

    const/high16 v15, 0x200000

    invoke-direct {v0, v1, v14, v15}, Lcom/eltechs/axs/xserver/EventName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/EventName;->FOCUS_CHANGE:Lcom/eltechs/axs/xserver/EventName;

    .line 37
    new-instance v0, Lcom/eltechs/axs/xserver/EventName;

    const-string v1, "PROPERTY_CHANGE"

    const/16 v14, 0x16

    const/high16 v15, 0x400000

    invoke-direct {v0, v1, v14, v15}, Lcom/eltechs/axs/xserver/EventName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/EventName;->PROPERTY_CHANGE:Lcom/eltechs/axs/xserver/EventName;

    .line 38
    new-instance v0, Lcom/eltechs/axs/xserver/EventName;

    const-string v1, "COLORMAP_CHANGE"

    const/16 v14, 0x17

    const/high16 v15, 0x800000

    invoke-direct {v0, v1, v14, v15}, Lcom/eltechs/axs/xserver/EventName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/EventName;->COLORMAP_CHANGE:Lcom/eltechs/axs/xserver/EventName;

    .line 39
    new-instance v0, Lcom/eltechs/axs/xserver/EventName;

    const-string v1, "OWNER_GRAB_BUTTON"

    const/16 v14, 0x18

    const/high16 v15, 0x1000000

    invoke-direct {v0, v1, v14, v15}, Lcom/eltechs/axs/xserver/EventName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/EventName;->OWNER_GRAB_BUTTON:Lcom/eltechs/axs/xserver/EventName;

    const/16 v0, 0x19

    .line 13
    new-array v0, v0, [Lcom/eltechs/axs/xserver/EventName;

    sget-object v1, Lcom/eltechs/axs/xserver/EventName;->KEY_PRESS:Lcom/eltechs/axs/xserver/EventName;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/EventName;->KEY_RELEASE:Lcom/eltechs/axs/xserver/EventName;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eltechs/axs/xserver/EventName;->BUTTON_PRESS:Lcom/eltechs/axs/xserver/EventName;

    aput-object v1, v0, v4

    sget-object v1, Lcom/eltechs/axs/xserver/EventName;->BUTTON_RELEASE:Lcom/eltechs/axs/xserver/EventName;

    aput-object v1, v0, v6

    sget-object v1, Lcom/eltechs/axs/xserver/EventName;->ENTER_WINDOW:Lcom/eltechs/axs/xserver/EventName;

    aput-object v1, v0, v5

    sget-object v1, Lcom/eltechs/axs/xserver/EventName;->LEAVE_WINDOW:Lcom/eltechs/axs/xserver/EventName;

    aput-object v1, v0, v9

    sget-object v1, Lcom/eltechs/axs/xserver/EventName;->POINTER_MOTION:Lcom/eltechs/axs/xserver/EventName;

    aput-object v1, v0, v10

    sget-object v1, Lcom/eltechs/axs/xserver/EventName;->POINTER_MOTION_HINT:Lcom/eltechs/axs/xserver/EventName;

    aput-object v1, v0, v11

    sget-object v1, Lcom/eltechs/axs/xserver/EventName;->BUTTON_1_MOTION:Lcom/eltechs/axs/xserver/EventName;

    aput-object v1, v0, v7

    sget-object v1, Lcom/eltechs/axs/xserver/EventName;->BUTTON_2_MOTION:Lcom/eltechs/axs/xserver/EventName;

    aput-object v1, v0, v12

    sget-object v1, Lcom/eltechs/axs/xserver/EventName;->BUTTON_3_MOTION:Lcom/eltechs/axs/xserver/EventName;

    aput-object v1, v0, v13

    sget-object v1, Lcom/eltechs/axs/xserver/EventName;->BUTTON_4_MOTION:Lcom/eltechs/axs/xserver/EventName;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/EventName;->BUTTON_5_MOTION:Lcom/eltechs/axs/xserver/EventName;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/EventName;->BUTTON_MOTION:Lcom/eltechs/axs/xserver/EventName;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/EventName;->KEYMAP_STATE:Lcom/eltechs/axs/xserver/EventName;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/EventName;->EXPOSURE:Lcom/eltechs/axs/xserver/EventName;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/EventName;->VISIBILITY_CHANGE:Lcom/eltechs/axs/xserver/EventName;

    aput-object v1, v0, v8

    sget-object v1, Lcom/eltechs/axs/xserver/EventName;->STRUCTURE_NOTIFY:Lcom/eltechs/axs/xserver/EventName;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/EventName;->RESIZE_REDIRECT:Lcom/eltechs/axs/xserver/EventName;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/EventName;->SUBSTRUCTURE_NOTIFY:Lcom/eltechs/axs/xserver/EventName;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/EventName;->SUBSTRUCTURE_REDIRECT:Lcom/eltechs/axs/xserver/EventName;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/EventName;->FOCUS_CHANGE:Lcom/eltechs/axs/xserver/EventName;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/EventName;->PROPERTY_CHANGE:Lcom/eltechs/axs/xserver/EventName;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/EventName;->COLORMAP_CHANGE:Lcom/eltechs/axs/xserver/EventName;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/EventName;->OWNER_GRAB_BUTTON:Lcom/eltechs/axs/xserver/EventName;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sput-object v0, Lcom/eltechs/axs/xserver/EventName;->$VALUES:[Lcom/eltechs/axs/xserver/EventName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput p3, p0, Lcom/eltechs/axs/xserver/EventName;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/xserver/EventName;
    .locals 1

    .line 13
    const-class v0, Lcom/eltechs/axs/xserver/EventName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/xserver/EventName;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/xserver/EventName;
    .locals 1

    .line 13
    sget-object v0, Lcom/eltechs/axs/xserver/EventName;->$VALUES:[Lcom/eltechs/axs/xserver/EventName;

    invoke-virtual {v0}, [Lcom/eltechs/axs/xserver/EventName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/xserver/EventName;

    return-object v0
.end method


# virtual methods
.method public flagValue()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/eltechs/axs/xserver/EventName;->id:I

    return v0
.end method

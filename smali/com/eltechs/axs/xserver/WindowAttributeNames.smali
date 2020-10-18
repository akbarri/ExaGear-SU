.class public final enum Lcom/eltechs/axs/xserver/WindowAttributeNames;
.super Ljava/lang/Enum;
.source "WindowAttributeNames.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/xserver/WindowAttributeNames;",
        ">;",
        "Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/xserver/WindowAttributeNames;

.field public static final enum BACKGROUND_PIXEL:Lcom/eltechs/axs/xserver/WindowAttributeNames;

.field public static final enum BACKGROUND_PIXMAP:Lcom/eltechs/axs/xserver/WindowAttributeNames;

.field public static final enum BACKING_PIXEL:Lcom/eltechs/axs/xserver/WindowAttributeNames;

.field public static final enum BACKING_PLANES:Lcom/eltechs/axs/xserver/WindowAttributeNames;

.field public static final enum BACKING_STORE:Lcom/eltechs/axs/xserver/WindowAttributeNames;

.field public static final enum BIT_GRAVITY:Lcom/eltechs/axs/xserver/WindowAttributeNames;

.field public static final enum BORDER_PIXEL:Lcom/eltechs/axs/xserver/WindowAttributeNames;

.field public static final enum BORDER_PIXMAP:Lcom/eltechs/axs/xserver/WindowAttributeNames;

.field public static final enum COLORMAP:Lcom/eltechs/axs/xserver/WindowAttributeNames;

.field public static final enum CURSOR:Lcom/eltechs/axs/xserver/WindowAttributeNames;

.field public static final enum DO_NOT_PROPAGATE_MASK:Lcom/eltechs/axs/xserver/WindowAttributeNames;

.field public static final enum EVENT_MASK:Lcom/eltechs/axs/xserver/WindowAttributeNames;

.field public static final enum OVERRIDE_REDIRECT:Lcom/eltechs/axs/xserver/WindowAttributeNames;

.field public static final enum SAVE_UNDER:Lcom/eltechs/axs/xserver/WindowAttributeNames;

.field public static final enum WIN_GRAVITY:Lcom/eltechs/axs/xserver/WindowAttributeNames;


# instance fields
.field private final flag:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 14
    new-instance v0, Lcom/eltechs/axs/xserver/WindowAttributeNames;

    const-string v1, "BACKGROUND_PIXMAP"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/eltechs/axs/xserver/WindowAttributeNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/WindowAttributeNames;->BACKGROUND_PIXMAP:Lcom/eltechs/axs/xserver/WindowAttributeNames;

    .line 15
    new-instance v0, Lcom/eltechs/axs/xserver/WindowAttributeNames;

    const-string v1, "BACKGROUND_PIXEL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/eltechs/axs/xserver/WindowAttributeNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/WindowAttributeNames;->BACKGROUND_PIXEL:Lcom/eltechs/axs/xserver/WindowAttributeNames;

    .line 16
    new-instance v0, Lcom/eltechs/axs/xserver/WindowAttributeNames;

    const-string v1, "BORDER_PIXMAP"

    const/4 v5, 0x4

    invoke-direct {v0, v1, v4, v5}, Lcom/eltechs/axs/xserver/WindowAttributeNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/WindowAttributeNames;->BORDER_PIXMAP:Lcom/eltechs/axs/xserver/WindowAttributeNames;

    .line 17
    new-instance v0, Lcom/eltechs/axs/xserver/WindowAttributeNames;

    const-string v1, "BORDER_PIXEL"

    const/4 v6, 0x3

    const/16 v7, 0x8

    invoke-direct {v0, v1, v6, v7}, Lcom/eltechs/axs/xserver/WindowAttributeNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/WindowAttributeNames;->BORDER_PIXEL:Lcom/eltechs/axs/xserver/WindowAttributeNames;

    .line 18
    new-instance v0, Lcom/eltechs/axs/xserver/WindowAttributeNames;

    const-string v1, "BIT_GRAVITY"

    const/16 v8, 0x10

    invoke-direct {v0, v1, v5, v8}, Lcom/eltechs/axs/xserver/WindowAttributeNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/WindowAttributeNames;->BIT_GRAVITY:Lcom/eltechs/axs/xserver/WindowAttributeNames;

    .line 19
    new-instance v0, Lcom/eltechs/axs/xserver/WindowAttributeNames;

    const-string v1, "WIN_GRAVITY"

    const/4 v8, 0x5

    const/16 v9, 0x20

    invoke-direct {v0, v1, v8, v9}, Lcom/eltechs/axs/xserver/WindowAttributeNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/WindowAttributeNames;->WIN_GRAVITY:Lcom/eltechs/axs/xserver/WindowAttributeNames;

    .line 20
    new-instance v0, Lcom/eltechs/axs/xserver/WindowAttributeNames;

    const-string v1, "BACKING_STORE"

    const/4 v9, 0x6

    const/16 v10, 0x40

    invoke-direct {v0, v1, v9, v10}, Lcom/eltechs/axs/xserver/WindowAttributeNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/WindowAttributeNames;->BACKING_STORE:Lcom/eltechs/axs/xserver/WindowAttributeNames;

    .line 21
    new-instance v0, Lcom/eltechs/axs/xserver/WindowAttributeNames;

    const-string v1, "BACKING_PLANES"

    const/4 v10, 0x7

    const/16 v11, 0x80

    invoke-direct {v0, v1, v10, v11}, Lcom/eltechs/axs/xserver/WindowAttributeNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/WindowAttributeNames;->BACKING_PLANES:Lcom/eltechs/axs/xserver/WindowAttributeNames;

    .line 22
    new-instance v0, Lcom/eltechs/axs/xserver/WindowAttributeNames;

    const-string v1, "BACKING_PIXEL"

    const/16 v11, 0x100

    invoke-direct {v0, v1, v7, v11}, Lcom/eltechs/axs/xserver/WindowAttributeNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/WindowAttributeNames;->BACKING_PIXEL:Lcom/eltechs/axs/xserver/WindowAttributeNames;

    .line 23
    new-instance v0, Lcom/eltechs/axs/xserver/WindowAttributeNames;

    const-string v1, "OVERRIDE_REDIRECT"

    const/16 v11, 0x9

    const/16 v12, 0x200

    invoke-direct {v0, v1, v11, v12}, Lcom/eltechs/axs/xserver/WindowAttributeNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/WindowAttributeNames;->OVERRIDE_REDIRECT:Lcom/eltechs/axs/xserver/WindowAttributeNames;

    .line 24
    new-instance v0, Lcom/eltechs/axs/xserver/WindowAttributeNames;

    const-string v1, "SAVE_UNDER"

    const/16 v12, 0xa

    const/16 v13, 0x400

    invoke-direct {v0, v1, v12, v13}, Lcom/eltechs/axs/xserver/WindowAttributeNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/WindowAttributeNames;->SAVE_UNDER:Lcom/eltechs/axs/xserver/WindowAttributeNames;

    .line 25
    new-instance v0, Lcom/eltechs/axs/xserver/WindowAttributeNames;

    const-string v1, "EVENT_MASK"

    const/16 v13, 0xb

    const/16 v14, 0x800

    invoke-direct {v0, v1, v13, v14}, Lcom/eltechs/axs/xserver/WindowAttributeNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/WindowAttributeNames;->EVENT_MASK:Lcom/eltechs/axs/xserver/WindowAttributeNames;

    .line 26
    new-instance v0, Lcom/eltechs/axs/xserver/WindowAttributeNames;

    const-string v1, "DO_NOT_PROPAGATE_MASK"

    const/16 v14, 0xc

    const/16 v15, 0x1000

    invoke-direct {v0, v1, v14, v15}, Lcom/eltechs/axs/xserver/WindowAttributeNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/WindowAttributeNames;->DO_NOT_PROPAGATE_MASK:Lcom/eltechs/axs/xserver/WindowAttributeNames;

    .line 27
    new-instance v0, Lcom/eltechs/axs/xserver/WindowAttributeNames;

    const-string v1, "COLORMAP"

    const/16 v15, 0xd

    const/16 v14, 0x2000

    invoke-direct {v0, v1, v15, v14}, Lcom/eltechs/axs/xserver/WindowAttributeNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/WindowAttributeNames;->COLORMAP:Lcom/eltechs/axs/xserver/WindowAttributeNames;

    .line 28
    new-instance v0, Lcom/eltechs/axs/xserver/WindowAttributeNames;

    const-string v1, "CURSOR"

    const/16 v14, 0xe

    const/16 v15, 0x4000

    invoke-direct {v0, v1, v14, v15}, Lcom/eltechs/axs/xserver/WindowAttributeNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/WindowAttributeNames;->CURSOR:Lcom/eltechs/axs/xserver/WindowAttributeNames;

    const/16 v0, 0xf

    .line 12
    new-array v0, v0, [Lcom/eltechs/axs/xserver/WindowAttributeNames;

    sget-object v1, Lcom/eltechs/axs/xserver/WindowAttributeNames;->BACKGROUND_PIXMAP:Lcom/eltechs/axs/xserver/WindowAttributeNames;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/WindowAttributeNames;->BACKGROUND_PIXEL:Lcom/eltechs/axs/xserver/WindowAttributeNames;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eltechs/axs/xserver/WindowAttributeNames;->BORDER_PIXMAP:Lcom/eltechs/axs/xserver/WindowAttributeNames;

    aput-object v1, v0, v4

    sget-object v1, Lcom/eltechs/axs/xserver/WindowAttributeNames;->BORDER_PIXEL:Lcom/eltechs/axs/xserver/WindowAttributeNames;

    aput-object v1, v0, v6

    sget-object v1, Lcom/eltechs/axs/xserver/WindowAttributeNames;->BIT_GRAVITY:Lcom/eltechs/axs/xserver/WindowAttributeNames;

    aput-object v1, v0, v5

    sget-object v1, Lcom/eltechs/axs/xserver/WindowAttributeNames;->WIN_GRAVITY:Lcom/eltechs/axs/xserver/WindowAttributeNames;

    aput-object v1, v0, v8

    sget-object v1, Lcom/eltechs/axs/xserver/WindowAttributeNames;->BACKING_STORE:Lcom/eltechs/axs/xserver/WindowAttributeNames;

    aput-object v1, v0, v9

    sget-object v1, Lcom/eltechs/axs/xserver/WindowAttributeNames;->BACKING_PLANES:Lcom/eltechs/axs/xserver/WindowAttributeNames;

    aput-object v1, v0, v10

    sget-object v1, Lcom/eltechs/axs/xserver/WindowAttributeNames;->BACKING_PIXEL:Lcom/eltechs/axs/xserver/WindowAttributeNames;

    aput-object v1, v0, v7

    sget-object v1, Lcom/eltechs/axs/xserver/WindowAttributeNames;->OVERRIDE_REDIRECT:Lcom/eltechs/axs/xserver/WindowAttributeNames;

    aput-object v1, v0, v11

    sget-object v1, Lcom/eltechs/axs/xserver/WindowAttributeNames;->SAVE_UNDER:Lcom/eltechs/axs/xserver/WindowAttributeNames;

    aput-object v1, v0, v12

    sget-object v1, Lcom/eltechs/axs/xserver/WindowAttributeNames;->EVENT_MASK:Lcom/eltechs/axs/xserver/WindowAttributeNames;

    aput-object v1, v0, v13

    sget-object v1, Lcom/eltechs/axs/xserver/WindowAttributeNames;->DO_NOT_PROPAGATE_MASK:Lcom/eltechs/axs/xserver/WindowAttributeNames;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/WindowAttributeNames;->COLORMAP:Lcom/eltechs/axs/xserver/WindowAttributeNames;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/WindowAttributeNames;->CURSOR:Lcom/eltechs/axs/xserver/WindowAttributeNames;

    aput-object v1, v0, v14

    sput-object v0, Lcom/eltechs/axs/xserver/WindowAttributeNames;->$VALUES:[Lcom/eltechs/axs/xserver/WindowAttributeNames;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput p3, p0, Lcom/eltechs/axs/xserver/WindowAttributeNames;->flag:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/xserver/WindowAttributeNames;
    .locals 1

    .line 12
    const-class v0, Lcom/eltechs/axs/xserver/WindowAttributeNames;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/xserver/WindowAttributeNames;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/xserver/WindowAttributeNames;
    .locals 1

    .line 12
    sget-object v0, Lcom/eltechs/axs/xserver/WindowAttributeNames;->$VALUES:[Lcom/eltechs/axs/xserver/WindowAttributeNames;

    invoke-virtual {v0}, [Lcom/eltechs/axs/xserver/WindowAttributeNames;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/xserver/WindowAttributeNames;

    return-object v0
.end method


# virtual methods
.method public flagValue()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/eltechs/axs/xserver/WindowAttributeNames;->flag:I

    return v0
.end method

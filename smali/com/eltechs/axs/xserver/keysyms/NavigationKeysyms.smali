.class public final enum Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;
.super Ljava/lang/Enum;
.source "NavigationKeysyms.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/keysyms/KeysymsEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;",
        ">;",
        "Lcom/eltechs/axs/xserver/keysyms/KeysymsEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;

.field public static final enum DOWN:Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;

.field public static final enum END:Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;

.field public static final enum HOME:Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;

.field public static final enum LEFT:Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;

.field public static final enum NEXT:Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;

.field public static final enum PRIOR:Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;

.field public static final enum RIGHT:Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;

.field public static final enum UP:Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;


# instance fields
.field private final keysym:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 12
    new-instance v0, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;

    const-string v1, "RIGHT"

    const/4 v2, 0x0

    const v3, 0xff53

    invoke-direct {v0, v1, v2, v3}, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;->RIGHT:Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;

    .line 13
    new-instance v0, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;

    const-string v1, "UP"

    const/4 v3, 0x1

    const v4, 0xff52

    invoke-direct {v0, v1, v3, v4}, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;->UP:Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;

    .line 14
    new-instance v0, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;

    const-string v1, "LEFT"

    const/4 v4, 0x2

    const v5, 0xff51

    invoke-direct {v0, v1, v4, v5}, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;->LEFT:Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;

    .line 15
    new-instance v0, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;

    const-string v1, "DOWN"

    const/4 v5, 0x3

    const v6, 0xff54

    invoke-direct {v0, v1, v5, v6}, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;->DOWN:Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;

    .line 16
    new-instance v0, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;

    const-string v1, "PRIOR"

    const/4 v6, 0x4

    const v7, 0xff55

    invoke-direct {v0, v1, v6, v7}, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;->PRIOR:Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;

    .line 17
    new-instance v0, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;

    const-string v1, "NEXT"

    const/4 v7, 0x5

    const v8, 0xff56

    invoke-direct {v0, v1, v7, v8}, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;->NEXT:Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;

    .line 18
    new-instance v0, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;

    const-string v1, "HOME"

    const/4 v8, 0x6

    const v9, 0xff50

    invoke-direct {v0, v1, v8, v9}, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;->HOME:Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;

    .line 19
    new-instance v0, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;

    const-string v1, "END"

    const/4 v9, 0x7

    const v10, 0xff57

    invoke-direct {v0, v1, v9, v10}, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;->END:Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;

    const/16 v0, 0x8

    .line 10
    new-array v0, v0, [Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;

    sget-object v1, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;->RIGHT:Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;->UP:Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;->LEFT:Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;

    aput-object v1, v0, v4

    sget-object v1, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;->DOWN:Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;

    aput-object v1, v0, v5

    sget-object v1, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;->PRIOR:Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;

    aput-object v1, v0, v6

    sget-object v1, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;->NEXT:Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;

    aput-object v1, v0, v7

    sget-object v1, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;->HOME:Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;

    aput-object v1, v0, v8

    sget-object v1, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;->END:Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;

    aput-object v1, v0, v9

    sput-object v0, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;->$VALUES:[Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput p3, p0, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;->keysym:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;
    .locals 1

    .line 10
    const-class v0, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;
    .locals 1

    .line 10
    sget-object v0, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;->$VALUES:[Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;

    invoke-virtual {v0}, [Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;

    return-object v0
.end method


# virtual methods
.method public getKeysym()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/eltechs/axs/xserver/keysyms/NavigationKeysyms;->keysym:I

    return v0
.end method

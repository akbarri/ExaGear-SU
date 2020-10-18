.class public final enum Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;
.super Ljava/lang/Enum;
.source "FunctionKeysyms.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/keysyms/KeysymsEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;",
        ">;",
        "Lcom/eltechs/axs/xserver/keysyms/KeysymsEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

.field public static final enum BACKSPACE:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

.field public static final enum DELETE:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

.field public static final enum ESC:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

.field public static final enum F1:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

.field public static final enum F10:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

.field public static final enum F11:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

.field public static final enum F12:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

.field public static final enum F2:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

.field public static final enum F3:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

.field public static final enum F4:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

.field public static final enum F5:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

.field public static final enum F6:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

.field public static final enum F7:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

.field public static final enum F8:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

.field public static final enum F9:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

.field public static final enum INSERT:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

.field public static final enum RETURN:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

.field public static final enum TAB:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;


# instance fields
.field private keysym:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 12
    new-instance v0, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    const-string v1, "BACKSPACE"

    const/4 v2, 0x0

    const v3, 0xff08

    invoke-direct {v0, v1, v2, v3}, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->BACKSPACE:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    .line 13
    new-instance v0, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    const-string v1, "TAB"

    const/4 v3, 0x1

    const v4, 0xff09

    invoke-direct {v0, v1, v3, v4}, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->TAB:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    .line 14
    new-instance v0, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    const-string v1, "RETURN"

    const/4 v4, 0x2

    const v5, 0xff0d

    invoke-direct {v0, v1, v4, v5}, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->RETURN:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    .line 15
    new-instance v0, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    const-string v1, "ESC"

    const/4 v5, 0x3

    const v6, 0xff1b

    invoke-direct {v0, v1, v5, v6}, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->ESC:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    .line 16
    new-instance v0, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    const-string v1, "F1"

    const/4 v6, 0x4

    const v7, 0xffbe

    invoke-direct {v0, v1, v6, v7}, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->F1:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    .line 17
    new-instance v0, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    const-string v1, "F2"

    const/4 v7, 0x5

    const v8, 0xffbf

    invoke-direct {v0, v1, v7, v8}, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->F2:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    .line 18
    new-instance v0, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    const-string v1, "F3"

    const/4 v8, 0x6

    const v9, 0xffc0

    invoke-direct {v0, v1, v8, v9}, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->F3:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    .line 19
    new-instance v0, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    const-string v1, "F4"

    const/4 v9, 0x7

    const v10, 0xffc1

    invoke-direct {v0, v1, v9, v10}, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->F4:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    .line 20
    new-instance v0, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    const-string v1, "F5"

    const/16 v10, 0x8

    const v11, 0xffc2

    invoke-direct {v0, v1, v10, v11}, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->F5:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    .line 21
    new-instance v0, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    const-string v1, "F6"

    const/16 v11, 0x9

    const v12, 0xffc3

    invoke-direct {v0, v1, v11, v12}, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->F6:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    .line 22
    new-instance v0, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    const-string v1, "F7"

    const/16 v12, 0xa

    const v13, 0xffc4

    invoke-direct {v0, v1, v12, v13}, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->F7:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    .line 23
    new-instance v0, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    const-string v1, "F8"

    const/16 v13, 0xb

    const v14, 0xffc5

    invoke-direct {v0, v1, v13, v14}, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->F8:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    .line 24
    new-instance v0, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    const-string v1, "F9"

    const/16 v14, 0xc

    const v15, 0xffc6

    invoke-direct {v0, v1, v14, v15}, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->F9:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    .line 25
    new-instance v0, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    const-string v1, "F10"

    const/16 v15, 0xd

    const v14, 0xffc7

    invoke-direct {v0, v1, v15, v14}, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->F10:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    .line 26
    new-instance v0, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    const-string v1, "F11"

    const/16 v14, 0xe

    const v15, 0xffc8

    invoke-direct {v0, v1, v14, v15}, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->F11:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    .line 27
    new-instance v0, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    const-string v1, "F12"

    const/16 v15, 0xf

    const v14, 0xffc9

    invoke-direct {v0, v1, v15, v14}, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->F12:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    .line 28
    new-instance v0, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    const-string v1, "INSERT"

    const/16 v14, 0x10

    const v15, 0xff63

    invoke-direct {v0, v1, v14, v15}, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->INSERT:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    .line 29
    new-instance v0, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    const-string v1, "DELETE"

    const/16 v14, 0x11

    const v15, 0xffff

    invoke-direct {v0, v1, v14, v15}, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->DELETE:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    const/16 v0, 0x12

    .line 10
    new-array v0, v0, [Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    sget-object v1, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->BACKSPACE:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->TAB:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->RETURN:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    aput-object v1, v0, v4

    sget-object v1, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->ESC:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    aput-object v1, v0, v5

    sget-object v1, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->F1:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    aput-object v1, v0, v6

    sget-object v1, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->F2:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    aput-object v1, v0, v7

    sget-object v1, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->F3:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    aput-object v1, v0, v8

    sget-object v1, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->F4:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    aput-object v1, v0, v9

    sget-object v1, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->F5:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    aput-object v1, v0, v10

    sget-object v1, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->F6:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    aput-object v1, v0, v11

    sget-object v1, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->F7:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    aput-object v1, v0, v12

    sget-object v1, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->F8:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    aput-object v1, v0, v13

    sget-object v1, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->F9:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->F10:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->F11:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->F12:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->INSERT:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->DELETE:Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sput-object v0, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->$VALUES:[Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput p3, p0, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->keysym:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;
    .locals 1

    .line 10
    const-class v0, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;
    .locals 1

    .line 10
    sget-object v0, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->$VALUES:[Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    invoke-virtual {v0}, [Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;

    return-object v0
.end method


# virtual methods
.method public getKeysym()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/eltechs/axs/xserver/keysyms/FunctionKeysyms;->keysym:I

    return v0
.end method

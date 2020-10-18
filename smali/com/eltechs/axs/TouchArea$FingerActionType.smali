.class public final enum Lcom/eltechs/axs/TouchArea$FingerActionType;
.super Ljava/lang/Enum;
.source "TouchArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/TouchArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FingerActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/TouchArea$FingerActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/TouchArea$FingerActionType;

.field public static final enum MOVE:Lcom/eltechs/axs/TouchArea$FingerActionType;

.field public static final enum MOVE_IN:Lcom/eltechs/axs/TouchArea$FingerActionType;

.field public static final enum MOVE_OUT:Lcom/eltechs/axs/TouchArea$FingerActionType;

.field public static final enum NONE:Lcom/eltechs/axs/TouchArea$FingerActionType;

.field public static final enum RELEASE:Lcom/eltechs/axs/TouchArea$FingerActionType;

.field public static final enum TOUCH:Lcom/eltechs/axs/TouchArea$FingerActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 30
    new-instance v0, Lcom/eltechs/axs/TouchArea$FingerActionType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/TouchArea$FingerActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/TouchArea$FingerActionType;->NONE:Lcom/eltechs/axs/TouchArea$FingerActionType;

    .line 31
    new-instance v0, Lcom/eltechs/axs/TouchArea$FingerActionType;

    const-string v1, "TOUCH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/eltechs/axs/TouchArea$FingerActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/TouchArea$FingerActionType;->TOUCH:Lcom/eltechs/axs/TouchArea$FingerActionType;

    .line 32
    new-instance v0, Lcom/eltechs/axs/TouchArea$FingerActionType;

    const-string v1, "MOVE_IN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/eltechs/axs/TouchArea$FingerActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/TouchArea$FingerActionType;->MOVE_IN:Lcom/eltechs/axs/TouchArea$FingerActionType;

    .line 33
    new-instance v0, Lcom/eltechs/axs/TouchArea$FingerActionType;

    const-string v1, "MOVE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/eltechs/axs/TouchArea$FingerActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/TouchArea$FingerActionType;->MOVE:Lcom/eltechs/axs/TouchArea$FingerActionType;

    .line 34
    new-instance v0, Lcom/eltechs/axs/TouchArea$FingerActionType;

    const-string v1, "MOVE_OUT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/eltechs/axs/TouchArea$FingerActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/TouchArea$FingerActionType;->MOVE_OUT:Lcom/eltechs/axs/TouchArea$FingerActionType;

    .line 35
    new-instance v0, Lcom/eltechs/axs/TouchArea$FingerActionType;

    const-string v1, "RELEASE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/eltechs/axs/TouchArea$FingerActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/TouchArea$FingerActionType;->RELEASE:Lcom/eltechs/axs/TouchArea$FingerActionType;

    const/4 v0, 0x6

    .line 28
    new-array v0, v0, [Lcom/eltechs/axs/TouchArea$FingerActionType;

    sget-object v1, Lcom/eltechs/axs/TouchArea$FingerActionType;->NONE:Lcom/eltechs/axs/TouchArea$FingerActionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/TouchArea$FingerActionType;->TOUCH:Lcom/eltechs/axs/TouchArea$FingerActionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eltechs/axs/TouchArea$FingerActionType;->MOVE_IN:Lcom/eltechs/axs/TouchArea$FingerActionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/eltechs/axs/TouchArea$FingerActionType;->MOVE:Lcom/eltechs/axs/TouchArea$FingerActionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/eltechs/axs/TouchArea$FingerActionType;->MOVE_OUT:Lcom/eltechs/axs/TouchArea$FingerActionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/eltechs/axs/TouchArea$FingerActionType;->RELEASE:Lcom/eltechs/axs/TouchArea$FingerActionType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/eltechs/axs/TouchArea$FingerActionType;->$VALUES:[Lcom/eltechs/axs/TouchArea$FingerActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/TouchArea$FingerActionType;
    .locals 1

    .line 28
    const-class v0, Lcom/eltechs/axs/TouchArea$FingerActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/TouchArea$FingerActionType;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/TouchArea$FingerActionType;
    .locals 1

    .line 28
    sget-object v0, Lcom/eltechs/axs/TouchArea$FingerActionType;->$VALUES:[Lcom/eltechs/axs/TouchArea$FingerActionType;

    invoke-virtual {v0}, [Lcom/eltechs/axs/TouchArea$FingerActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/TouchArea$FingerActionType;

    return-object v0
.end method

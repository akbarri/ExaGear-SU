.class public final enum Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;
.super Ljava/lang/Enum;
.source "PointerContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/GestureStateMachine/PointerContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MoveMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;

.field public static final enum AIM:Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;

.field public static final enum NOT_INIT:Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;

.field public static final enum TAP:Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 12
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;

    const-string v1, "TAP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;->TAP:Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;

    .line 13
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;

    const-string v1, "AIM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;->AIM:Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;

    .line 14
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;

    const-string v1, "NOT_INIT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;->NOT_INIT:Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;

    const/4 v0, 0x3

    .line 10
    new-array v0, v0, [Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;

    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;->TAP:Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;->AIM:Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;->NOT_INIT:Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;

    aput-object v1, v0, v4

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;->$VALUES:[Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;
    .locals 1

    .line 10
    const-class v0, Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;
    .locals 1

    .line 10
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;->$VALUES:[Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;

    invoke-virtual {v0}, [Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;

    return-object v0
.end method

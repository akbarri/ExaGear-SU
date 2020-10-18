.class public final enum Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;
.super Ljava/lang/Enum;
.source "WDesktop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/ed/startupActions/WDesktop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UserRequestedAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;

.field public static final enum GO_FURTHER:Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;

.field public static final enum RESTART_ME:Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 41
    new-instance v0, Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;

    const-string v1, "GO_FURTHER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;->GO_FURTHER:Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;

    .line 42
    new-instance v0, Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;

    const-string v1, "RESTART_ME"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;->RESTART_ME:Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;

    const/4 v0, 0x2

    .line 39
    new-array v0, v0, [Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;

    sget-object v1, Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;->GO_FURTHER:Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;->RESTART_ME:Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;->$VALUES:[Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;
    .locals 1

    .line 39
    const-class v0, Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;
    .locals 1

    .line 39
    sget-object v0, Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;->$VALUES:[Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;

    invoke-virtual {v0}, [Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;

    return-object v0
.end method

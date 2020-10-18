.class synthetic Lcom/eltechs/ed/startupActions/WDesktop$1;
.super Ljava/lang/Object;
.source "WDesktop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/ed/startupActions/WDesktop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$eltechs$ed$startupActions$WDesktop$UserRequestedAction:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 19
    invoke-static {}, Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;->values()[Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/eltechs/ed/startupActions/WDesktop$1;->$SwitchMap$com$eltechs$ed$startupActions$WDesktop$UserRequestedAction:[I

    :try_start_0
    sget-object v0, Lcom/eltechs/ed/startupActions/WDesktop$1;->$SwitchMap$com$eltechs$ed$startupActions$WDesktop$UserRequestedAction:[I

    sget-object v1, Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;->GO_FURTHER:Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;

    invoke-virtual {v1}, Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/eltechs/ed/startupActions/WDesktop$1;->$SwitchMap$com$eltechs$ed$startupActions$WDesktop$UserRequestedAction:[I

    sget-object v1, Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;->RESTART_ME:Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;

    invoke-virtual {v1}, Lcom/eltechs/ed/startupActions/WDesktop$UserRequestedAction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

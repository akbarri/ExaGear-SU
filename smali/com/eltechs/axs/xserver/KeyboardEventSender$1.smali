.class synthetic Lcom/eltechs/axs/xserver/KeyboardEventSender$1;
.super Ljava/lang/Object;
.source "KeyboardEventSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/xserver/KeyboardEventSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$eltechs$axs$xserver$EventName:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 81
    invoke-static {}, Lcom/eltechs/axs/xserver/EventName;->values()[Lcom/eltechs/axs/xserver/EventName;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/eltechs/axs/xserver/KeyboardEventSender$1;->$SwitchMap$com$eltechs$axs$xserver$EventName:[I

    :try_start_0
    sget-object v0, Lcom/eltechs/axs/xserver/KeyboardEventSender$1;->$SwitchMap$com$eltechs$axs$xserver$EventName:[I

    sget-object v1, Lcom/eltechs/axs/xserver/EventName;->KEY_PRESS:Lcom/eltechs/axs/xserver/EventName;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/EventName;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/eltechs/axs/xserver/KeyboardEventSender$1;->$SwitchMap$com$eltechs$axs$xserver$EventName:[I

    sget-object v1, Lcom/eltechs/axs/xserver/EventName;->KEY_RELEASE:Lcom/eltechs/axs/xserver/EventName;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/EventName;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

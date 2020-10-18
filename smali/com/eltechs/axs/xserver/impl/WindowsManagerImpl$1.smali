.class synthetic Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl$1;
.super Ljava/lang/Object;
.source "WindowsManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$eltechs$axs$xserver$StackMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 243
    invoke-static {}, Lcom/eltechs/axs/xserver/StackMode;->values()[Lcom/eltechs/axs/xserver/StackMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl$1;->$SwitchMap$com$eltechs$axs$xserver$StackMode:[I

    :try_start_0
    sget-object v0, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl$1;->$SwitchMap$com$eltechs$axs$xserver$StackMode:[I

    sget-object v1, Lcom/eltechs/axs/xserver/StackMode;->ABOVE:Lcom/eltechs/axs/xserver/StackMode;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/StackMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/eltechs/axs/xserver/impl/WindowsManagerImpl$1;->$SwitchMap$com$eltechs$axs$xserver$StackMode:[I

    sget-object v1, Lcom/eltechs/axs/xserver/StackMode;->BELOW:Lcom/eltechs/axs/xserver/StackMode;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/StackMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

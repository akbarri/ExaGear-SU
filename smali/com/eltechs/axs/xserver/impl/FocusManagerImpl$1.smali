.class synthetic Lcom/eltechs/axs/xserver/impl/FocusManagerImpl$1;
.super Ljava/lang/Object;
.source "FocusManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/xserver/impl/FocusManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$eltechs$axs$xserver$FocusManager$FocusReversionPolicy:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    invoke-static {}, Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;->values()[Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/eltechs/axs/xserver/impl/FocusManagerImpl$1;->$SwitchMap$com$eltechs$axs$xserver$FocusManager$FocusReversionPolicy:[I

    :try_start_0
    sget-object v0, Lcom/eltechs/axs/xserver/impl/FocusManagerImpl$1;->$SwitchMap$com$eltechs$axs$xserver$FocusManager$FocusReversionPolicy:[I

    sget-object v1, Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;->NONE:Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/eltechs/axs/xserver/impl/FocusManagerImpl$1;->$SwitchMap$com$eltechs$axs$xserver$FocusManager$FocusReversionPolicy:[I

    sget-object v1, Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;->POINTER_ROOT:Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/eltechs/axs/xserver/impl/FocusManagerImpl$1;->$SwitchMap$com$eltechs$axs$xserver$FocusManager$FocusReversionPolicy:[I

    sget-object v1, Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;->PARENT:Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method

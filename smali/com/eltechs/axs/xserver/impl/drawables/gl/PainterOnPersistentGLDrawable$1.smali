.class synthetic Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable$1;
.super Ljava/lang/Object;
.source "PainterOnPersistentGLDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$eltechs$axs$xserver$graphicsContext$PixelCompositionRule:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 87
    invoke-static {}, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->values()[Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable$1;->$SwitchMap$com$eltechs$axs$xserver$graphicsContext$PixelCompositionRule:[I

    :try_start_0
    sget-object v0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable$1;->$SwitchMap$com$eltechs$axs$xserver$graphicsContext$PixelCompositionRule:[I

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->COPY:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable$1;->$SwitchMap$com$eltechs$axs$xserver$graphicsContext$PixelCompositionRule:[I

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->AND_REVERSE:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable$1;->$SwitchMap$com$eltechs$axs$xserver$graphicsContext$PixelCompositionRule:[I

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->OR_REVERSE:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable$1;->$SwitchMap$com$eltechs$axs$xserver$graphicsContext$PixelCompositionRule:[I

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->AND:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable$1;->$SwitchMap$com$eltechs$axs$xserver$graphicsContext$PixelCompositionRule:[I

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->OR:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable$1;->$SwitchMap$com$eltechs$axs$xserver$graphicsContext$PixelCompositionRule:[I

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->CLEAR:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable$1;->$SwitchMap$com$eltechs$axs$xserver$graphicsContext$PixelCompositionRule:[I

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->SET:Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method

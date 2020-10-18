.class synthetic Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$1;
.super Ljava/lang/Object;
.source "EpollProcessorThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$eltechs$axs$proto$input$ProcessingResult:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 357
    invoke-static {}, Lcom/eltechs/axs/proto/input/ProcessingResult;->values()[Lcom/eltechs/axs/proto/input/ProcessingResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$1;->$SwitchMap$com$eltechs$axs$proto$input$ProcessingResult:[I

    :try_start_0
    sget-object v0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$1;->$SwitchMap$com$eltechs$axs$proto$input$ProcessingResult:[I

    sget-object v1, Lcom/eltechs/axs/proto/input/ProcessingResult;->PROCESSED_KILL_CONNECTION:Lcom/eltechs/axs/proto/input/ProcessingResult;

    invoke-virtual {v1}, Lcom/eltechs/axs/proto/input/ProcessingResult;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$1;->$SwitchMap$com$eltechs$axs$proto$input$ProcessingResult:[I

    sget-object v1, Lcom/eltechs/axs/proto/input/ProcessingResult;->PROCESSED:Lcom/eltechs/axs/proto/input/ProcessingResult;

    invoke-virtual {v1}, Lcom/eltechs/axs/proto/input/ProcessingResult;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/eltechs/axs/xconnectors/epoll/impl/EpollProcessorThread$1;->$SwitchMap$com$eltechs$axs$proto$input$ProcessingResult:[I

    sget-object v1, Lcom/eltechs/axs/proto/input/ProcessingResult;->INCOMPLETE_BUFFER:Lcom/eltechs/axs/proto/input/ProcessingResult;

    invoke-virtual {v1}, Lcom/eltechs/axs/proto/input/ProcessingResult;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method

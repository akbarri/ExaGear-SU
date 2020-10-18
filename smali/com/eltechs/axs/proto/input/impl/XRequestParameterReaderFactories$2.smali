.class final Lcom/eltechs/axs/proto/input/impl/XRequestParameterReaderFactories$2;
.super Ljava/lang/Object;
.source "XRequestParameterReaderFactories.java"

# interfaces
.implements Lcom/eltechs/axs/proto/input/annotations/RequestParamReadersFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/proto/input/impl/XRequestParameterReaderFactories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createSimpleReader(Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;Lcom/eltechs/axs/proto/input/annotations/ConfigurationContext;)Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;
    .locals 3

    .line 68
    invoke-static {p1}, Lcom/eltechs/axs/proto/input/impl/XRequestParameterReaderFactories;->access$100(Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;)Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;

    move-result-object v0

    .line 69
    invoke-virtual {p1}, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 71
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_15

    const-class v2, Ljava/lang/Boolean;

    if-ne v1, v2, :cond_0

    goto/16 :goto_3

    .line 75
    :cond_0
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_14

    const-class v2, Ljava/lang/Byte;

    if-ne v1, v2, :cond_1

    goto/16 :goto_2

    .line 79
    :cond_1
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_13

    const-class v2, Ljava/lang/Short;

    if-ne v1, v2, :cond_2

    goto/16 :goto_1

    .line 83
    :cond_2
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_12

    const-class v2, Ljava/lang/Integer;

    if-ne v1, v2, :cond_3

    goto/16 :goto_0

    .line 87
    :cond_3
    const-class v2, Ljava/lang/String;

    if-ne v1, v2, :cond_4

    .line 89
    invoke-static {p1, p2}, Lcom/eltechs/axs/proto/input/impl/XRequestParameterReaderFactories;->access$200(Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;Lcom/eltechs/axs/proto/input/annotations/ConfigurationContext;)Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;

    move-result-object p1

    return-object p1

    .line 91
    :cond_4
    const-class v2, Lcom/eltechs/axs/xserver/Atom;

    if-ne v1, v2, :cond_5

    .line 93
    new-instance p2, Lcom/eltechs/axs/proto/input/parameterReaders/impl/AtomParameterReader;

    invoke-direct {p2, v0, p1}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/AtomParameterReader;-><init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;)V

    return-object p2

    .line 95
    :cond_5
    const-class v2, Lcom/eltechs/axs/xserver/Drawable;

    if-ne v1, v2, :cond_6

    .line 97
    new-instance p2, Lcom/eltechs/axs/proto/input/parameterReaders/impl/DrawableParameterReader;

    invoke-direct {p2, v0, p1}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/DrawableParameterReader;-><init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;)V

    return-object p2

    .line 99
    :cond_6
    const-class v2, Lcom/eltechs/axs/xserver/GraphicsContext;

    if-ne v1, v2, :cond_7

    .line 101
    new-instance p2, Lcom/eltechs/axs/proto/input/parameterReaders/impl/GraphicsContextParameterReader;

    invoke-direct {p2, v0, p1}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/GraphicsContextParameterReader;-><init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;)V

    return-object p2

    .line 103
    :cond_7
    const-class v2, Lcom/eltechs/axs/xserver/Window;

    if-ne v1, v2, :cond_8

    .line 105
    new-instance p2, Lcom/eltechs/axs/proto/input/parameterReaders/impl/WindowParameterReader;

    invoke-direct {p2, v0, p1}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/WindowParameterReader;-><init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;)V

    return-object p2

    .line 107
    :cond_8
    const-class v2, Lcom/eltechs/axs/xserver/Pixmap;

    if-ne v1, v2, :cond_9

    .line 109
    new-instance p2, Lcom/eltechs/axs/proto/input/parameterReaders/impl/PixmapParameterReader;

    invoke-direct {p2, v0, p1}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/PixmapParameterReader;-><init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;)V

    return-object p2

    .line 111
    :cond_9
    const-class v2, Lcom/eltechs/axs/xserver/Cursor;

    if-ne v1, v2, :cond_a

    .line 113
    new-instance p2, Lcom/eltechs/axs/proto/input/parameterReaders/impl/CursorParameterReader;

    invoke-direct {p2, v0, p1}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/CursorParameterReader;-><init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;)V

    return-object p2

    .line 115
    :cond_a
    const-class v2, Lcom/eltechs/axs/xserver/Colormap;

    if-ne v1, v2, :cond_b

    .line 117
    new-instance p2, Lcom/eltechs/axs/proto/input/parameterReaders/impl/ColormapParameterReader;

    invoke-direct {p2, v0, p1}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/ColormapParameterReader;-><init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;)V

    return-object p2

    .line 119
    :cond_b
    const-class v2, Lcom/eltechs/axs/xserver/ShmSegment;

    if-ne v1, v2, :cond_c

    .line 121
    new-instance p2, Lcom/eltechs/axs/proto/input/parameterReaders/impl/ShmSegmentParameterReader;

    invoke-direct {p2, v0, p1}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/ShmSegmentParameterReader;-><init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;)V

    return-object p2

    .line 123
    :cond_c
    const-class v2, Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    if-ne v1, v2, :cond_d

    .line 125
    new-instance p2, Lcom/eltechs/axs/proto/input/parameterReaders/impl/VisualParameterReader;

    invoke-direct {p2, v0, p1}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/VisualParameterReader;-><init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;)V

    return-object p2

    .line 127
    :cond_d
    const-class v2, Lcom/eltechs/axs/xserver/impl/masks/Mask;

    if-ne v1, v2, :cond_e

    .line 129
    new-instance v1, Lcom/eltechs/axs/proto/input/parameterReaders/impl/MaskParameterReader;

    invoke-direct {v1, v0, p1, p2}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/MaskParameterReader;-><init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;Lcom/eltechs/axs/proto/input/annotations/ConfigurationContext;)V

    return-object v1

    .line 131
    :cond_e
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 133
    new-instance p2, Lcom/eltechs/axs/proto/input/parameterReaders/impl/EnumParameterReader;

    invoke-static {p1}, Lcom/eltechs/axs/proto/input/impl/XRequestParameterReaderFactories;->access$100(Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;)Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/EnumParameterReader;-><init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;)V

    return-object p2

    .line 135
    :cond_f
    const-class v0, Lcom/eltechs/axs/xserver/events/Event;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 137
    new-instance p2, Lcom/eltechs/axs/proto/input/parameterReaders/impl/EventParameterReader;

    invoke-static {p1}, Lcom/eltechs/axs/proto/input/impl/XRequestParameterReaderFactories;->access$100(Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;)Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/EventParameterReader;-><init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;)V

    return-object p2

    .line 139
    :cond_10
    const-class v0, Ljava/nio/ByteBuffer;

    if-ne v1, v0, :cond_11

    .line 141
    invoke-static {p1, p2}, Lcom/eltechs/axs/proto/input/impl/XRequestParameterReaderFactories;->access$300(Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;Lcom/eltechs/axs/proto/input/annotations/ConfigurationContext;)Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;

    move-result-object p1

    return-object p1

    :cond_11
    const/4 p1, 0x0

    return-object p1

    .line 85
    :cond_12
    :goto_0
    new-instance p2, Lcom/eltechs/axs/proto/input/parameterReaders/impl/IntegerParameterReader;

    invoke-direct {p2, v0, p1}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/IntegerParameterReader;-><init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;)V

    return-object p2

    .line 81
    :cond_13
    :goto_1
    new-instance p2, Lcom/eltechs/axs/proto/input/parameterReaders/impl/ShortParameterReader;

    invoke-direct {p2, v0, p1}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/ShortParameterReader;-><init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;)V

    return-object p2

    .line 77
    :cond_14
    :goto_2
    new-instance p2, Lcom/eltechs/axs/proto/input/parameterReaders/impl/ByteParameterReader;

    invoke-direct {p2, v0, p1}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/ByteParameterReader;-><init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;)V

    return-object p2

    .line 73
    :cond_15
    :goto_3
    new-instance p2, Lcom/eltechs/axs/proto/input/parameterReaders/impl/BooleanParameterReader;

    invoke-direct {p2, v0, p1}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/BooleanParameterReader;-><init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;)V

    return-object p2
.end method


# virtual methods
.method public createReader(Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;Lcom/eltechs/axs/proto/input/annotations/ConfigurationContext;)Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;
    .locals 1

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/eltechs/axs/proto/input/impl/XRequestParameterReaderFactories$2;->createSimpleReader(Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;Lcom/eltechs/axs/proto/input/annotations/ConfigurationContext;)Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    invoke-static {v0, p1, p2}, Lcom/eltechs/axs/proto/input/impl/XRequestParameterReaderFactories;->access$000(Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;Lcom/eltechs/axs/proto/input/annotations/ConfigurationContext;)Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.class final Lcom/eltechs/axs/proto/input/impl/EventParameterReaderFactory$1;
.super Ljava/lang/Object;
.source "EventParameterReaderFactory.java"

# interfaces
.implements Lcom/eltechs/axs/proto/input/annotations/RequestParamReadersFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/proto/input/impl/EventParameterReaderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createReader(Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;Lcom/eltechs/axs/proto/input/annotations/ConfigurationContext;)Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;
    .locals 3

    .line 32
    sget-object v0, Lcom/eltechs/axs/proto/input/annotations/impl/NormalRequestDataReader;->INSTANCE:Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;

    .line 33
    invoke-virtual {p1}, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 35
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_12

    const-class v2, Ljava/lang/Boolean;

    if-ne v1, v2, :cond_0

    goto/16 :goto_3

    .line 39
    :cond_0
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_11

    const-class v2, Ljava/lang/Byte;

    if-ne v1, v2, :cond_1

    goto/16 :goto_2

    .line 43
    :cond_1
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_10

    const-class v2, Ljava/lang/Short;

    if-ne v1, v2, :cond_2

    goto/16 :goto_1

    .line 47
    :cond_2
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_f

    const-class v2, Ljava/lang/Integer;

    if-ne v1, v2, :cond_3

    goto/16 :goto_0

    .line 51
    :cond_3
    const-class v2, Lcom/eltechs/axs/xserver/Atom;

    if-ne v1, v2, :cond_4

    .line 53
    new-instance p2, Lcom/eltechs/axs/proto/input/parameterReaders/impl/AtomParameterReader;

    invoke-direct {p2, v0, p1}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/AtomParameterReader;-><init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;)V

    return-object p2

    .line 55
    :cond_4
    const-class v2, Lcom/eltechs/axs/xserver/Drawable;

    if-ne v1, v2, :cond_5

    .line 57
    new-instance p2, Lcom/eltechs/axs/proto/input/parameterReaders/impl/DrawableParameterReader;

    invoke-direct {p2, v0, p1}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/DrawableParameterReader;-><init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;)V

    return-object p2

    .line 59
    :cond_5
    const-class v2, Lcom/eltechs/axs/xserver/GraphicsContext;

    if-ne v1, v2, :cond_6

    .line 61
    new-instance p2, Lcom/eltechs/axs/proto/input/parameterReaders/impl/GraphicsContextParameterReader;

    invoke-direct {p2, v0, p1}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/GraphicsContextParameterReader;-><init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;)V

    return-object p2

    .line 63
    :cond_6
    const-class v2, Lcom/eltechs/axs/xserver/Window;

    if-ne v1, v2, :cond_7

    .line 65
    new-instance p2, Lcom/eltechs/axs/proto/input/parameterReaders/impl/WindowParameterReader;

    invoke-direct {p2, v0, p1}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/WindowParameterReader;-><init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;)V

    return-object p2

    .line 67
    :cond_7
    const-class v2, Lcom/eltechs/axs/xserver/Pixmap;

    if-ne v1, v2, :cond_8

    .line 69
    new-instance p2, Lcom/eltechs/axs/proto/input/parameterReaders/impl/PixmapParameterReader;

    invoke-direct {p2, v0, p1}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/PixmapParameterReader;-><init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;)V

    return-object p2

    .line 71
    :cond_8
    const-class v2, Lcom/eltechs/axs/xserver/Cursor;

    if-ne v1, v2, :cond_9

    .line 73
    new-instance p2, Lcom/eltechs/axs/proto/input/parameterReaders/impl/CursorParameterReader;

    invoke-direct {p2, v0, p1}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/CursorParameterReader;-><init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;)V

    return-object p2

    .line 75
    :cond_9
    const-class v2, Lcom/eltechs/axs/xserver/Colormap;

    if-ne v1, v2, :cond_a

    .line 77
    new-instance p2, Lcom/eltechs/axs/proto/input/parameterReaders/impl/ColormapParameterReader;

    invoke-direct {p2, v0, p1}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/ColormapParameterReader;-><init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;)V

    return-object p2

    .line 79
    :cond_a
    const-class v2, Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    if-ne v1, v2, :cond_b

    .line 81
    new-instance p2, Lcom/eltechs/axs/proto/input/parameterReaders/impl/VisualParameterReader;

    invoke-direct {p2, v0, p1}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/VisualParameterReader;-><init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;)V

    return-object p2

    .line 83
    :cond_b
    const-class v2, Lcom/eltechs/axs/xserver/impl/masks/Mask;

    if-ne v1, v2, :cond_c

    .line 85
    new-instance v1, Lcom/eltechs/axs/proto/input/parameterReaders/impl/MaskParameterReader;

    invoke-direct {v1, v0, p1, p2}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/MaskParameterReader;-><init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;Lcom/eltechs/axs/proto/input/annotations/ConfigurationContext;)V

    return-object v1

    .line 87
    :cond_c
    const-class p2, Ljava/lang/Enum;

    invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 89
    new-instance p2, Lcom/eltechs/axs/proto/input/parameterReaders/impl/EnumParameterReader;

    sget-object v0, Lcom/eltechs/axs/proto/input/annotations/impl/NormalRequestDataReader;->INSTANCE:Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;

    invoke-direct {p2, v0, p1}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/EnumParameterReader;-><init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;)V

    return-object p2

    .line 91
    :cond_d
    const-class p1, Ljava/nio/ByteBuffer;

    if-ne v1, p1, :cond_e

    .line 93
    new-instance p1, Lcom/eltechs/axs/proto/input/parameterReaders/impl/RemainingRequestDataAsByteBufferParameterReader;

    invoke-direct {p1}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/RemainingRequestDataAsByteBufferParameterReader;-><init>()V

    return-object p1

    :cond_e
    const-string p1, "Wrong argument type in EventBuilder annotated method: %s\n"

    const/4 p2, 0x1

    .line 96
    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 49
    :cond_f
    :goto_0
    new-instance p2, Lcom/eltechs/axs/proto/input/parameterReaders/impl/IntegerParameterReader;

    invoke-direct {p2, v0, p1}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/IntegerParameterReader;-><init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;)V

    return-object p2

    .line 45
    :cond_10
    :goto_1
    new-instance p2, Lcom/eltechs/axs/proto/input/parameterReaders/impl/ShortParameterReader;

    invoke-direct {p2, v0, p1}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/ShortParameterReader;-><init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;)V

    return-object p2

    .line 41
    :cond_11
    :goto_2
    new-instance p2, Lcom/eltechs/axs/proto/input/parameterReaders/impl/ByteParameterReader;

    invoke-direct {p2, v0, p1}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/ByteParameterReader;-><init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;)V

    return-object p2

    .line 37
    :cond_12
    :goto_3
    new-instance p2, Lcom/eltechs/axs/proto/input/parameterReaders/impl/BooleanParameterReader;

    invoke-direct {p2, v0, p1}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/BooleanParameterReader;-><init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;)V

    return-object p2
.end method

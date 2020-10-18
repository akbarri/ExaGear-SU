.class public Lcom/eltechs/axs/proto/input/impl/XRequestParameterReaderFactories;
.super Ljava/lang/Object;
.source "XRequestParameterReaderFactories.java"


# static fields
.field public static final CONTEXT_PARAM_READERS_FACTORY:Lcom/eltechs/axs/proto/input/annotations/RequestContextParamReadersFactory;

.field public static final REQUEST_PARAM_READERS_FACTORY:Lcom/eltechs/axs/proto/input/annotations/RequestParamReadersFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/eltechs/axs/proto/input/impl/XRequestParameterReaderFactories$1;

    invoke-direct {v0}, Lcom/eltechs/axs/proto/input/impl/XRequestParameterReaderFactories$1;-><init>()V

    sput-object v0, Lcom/eltechs/axs/proto/input/impl/XRequestParameterReaderFactories;->CONTEXT_PARAM_READERS_FACTORY:Lcom/eltechs/axs/proto/input/annotations/RequestContextParamReadersFactory;

    .line 53
    new-instance v0, Lcom/eltechs/axs/proto/input/impl/XRequestParameterReaderFactories$2;

    invoke-direct {v0}, Lcom/eltechs/axs/proto/input/impl/XRequestParameterReaderFactories$2;-><init>()V

    sput-object v0, Lcom/eltechs/axs/proto/input/impl/XRequestParameterReaderFactories;->REQUEST_PARAM_READERS_FACTORY:Lcom/eltechs/axs/proto/input/annotations/RequestParamReadersFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;Lcom/eltechs/axs/proto/input/annotations/ConfigurationContext;)Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;
    .locals 0

    .line 28
    invoke-static {p0, p1, p2}, Lcom/eltechs/axs/proto/input/impl/XRequestParameterReaderFactories;->applyMask(Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;Lcom/eltechs/axs/proto/input/annotations/ConfigurationContext;)Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;)Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;
    .locals 0

    .line 28
    invoke-static {p0}, Lcom/eltechs/axs/proto/input/impl/XRequestParameterReaderFactories;->selectRequestDataReaderForParameter(Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;)Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;Lcom/eltechs/axs/proto/input/annotations/ConfigurationContext;)Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;
    .locals 0

    .line 28
    invoke-static {p0, p1}, Lcom/eltechs/axs/proto/input/impl/XRequestParameterReaderFactories;->createString8Reader(Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;Lcom/eltechs/axs/proto/input/annotations/ConfigurationContext;)Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;Lcom/eltechs/axs/proto/input/annotations/ConfigurationContext;)Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;
    .locals 0

    .line 28
    invoke-static {p0, p1}, Lcom/eltechs/axs/proto/input/impl/XRequestParameterReaderFactories;->createByteBufferReader(Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;Lcom/eltechs/axs/proto/input/annotations/ConfigurationContext;)Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;

    move-result-object p0

    return-object p0
.end method

.method private static applyMask(Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;Lcom/eltechs/axs/proto/input/annotations/ConfigurationContext;)Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;
    .locals 10

    .line 216
    const-class v0, Lcom/eltechs/axs/proto/input/annotations/Optional;

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/proto/input/annotations/Optional;

    if-nez v0, :cond_0

    return-object p0

    .line 222
    :cond_0
    invoke-interface {v0}, Lcom/eltechs/axs/proto/input/annotations/Optional;->mask()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/eltechs/axs/proto/input/annotations/ConfigurationContext;->findNamedParameter(Ljava/lang/String;)Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;

    move-result-object v1

    const-string v2, "Parameter %d of the request handler method %s specifies an invalid name of parameter holding the mask."

    const/4 v3, 0x2

    .line 223
    new-array v4, v3, [Ljava/lang/Object;

    .line 225
    invoke-virtual {p1}, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->getIndex()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-interface {p2}, Lcom/eltechs/axs/proto/input/annotations/ConfigurationContext;->getHandlerMethodName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    .line 223
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eltechs/axs/helpers/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    invoke-virtual {v1}, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->getIndex()I

    move-result v2

    invoke-virtual {p1}, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->getIndex()I

    move-result v4

    if-ge v2, v4, :cond_1

    move v2, v7

    goto :goto_0

    :cond_1
    move v2, v6

    :goto_0
    const-string v4, "Parameter %d of the request handler method %s must have its presence specified by a mask in a preceding parameter."

    new-array v5, v3, [Ljava/lang/Object;

    .line 229
    invoke-virtual {p1}, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->getIndex()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-interface {p2}, Lcom/eltechs/axs/proto/input/annotations/ConfigurationContext;->getHandlerMethodName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    .line 227
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    .line 231
    invoke-virtual {v1}, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v2}, Lcom/eltechs/axs/proto/input/impl/XRequestParameterReaderFactories;->getFlagsClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "The parameter \'%s\' specified as a presence marker mask to the parameter %d of %s must be of type type Mask<>."

    const/4 v5, 0x3

    .line 232
    new-array v8, v5, [Ljava/lang/Object;

    .line 234
    invoke-interface {v0}, Lcom/eltechs/axs/proto/input/annotations/Optional;->mask()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual {p1}, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->getIndex()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-interface {p2}, Lcom/eltechs/axs/proto/input/annotations/ConfigurationContext;->getHandlerMethodName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 232
    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/eltechs/axs/helpers/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    invoke-interface {v0}, Lcom/eltechs/axs/proto/input/annotations/Optional;->bit()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/eltechs/axs/proto/input/impl/XRequestParameterReaderFactories;->getEnumValue(Ljava/lang/Class;Ljava/lang/String;)Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;

    move-result-object v2

    const-string v4, "Invalid flag name \'%s\' in the specification of the parameter %d of the request handler method %s."

    .line 237
    new-array v5, v5, [Ljava/lang/Object;

    .line 239
    invoke-interface {v0}, Lcom/eltechs/axs/proto/input/annotations/Optional;->bit()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {p1}, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->getIndex()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v7

    invoke-interface {p2}, Lcom/eltechs/axs/proto/input/annotations/ConfigurationContext;->getHandlerMethodName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v3

    .line 237
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/eltechs/axs/helpers/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    invoke-virtual {v1}, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->getIndex()I

    move-result p1

    .line 242
    new-instance p2, Lcom/eltechs/axs/proto/input/impl/XRequestParameterReaderFactories$3;

    invoke-direct {p2, p1, v2, p0}, Lcom/eltechs/axs/proto/input/impl/XRequestParameterReaderFactories$3;-><init>(ILcom/eltechs/axs/xserver/impl/masks/FlagsEnum;Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;)V

    return-object p2
.end method

.method private static createByteBufferReader(Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;Lcom/eltechs/axs/proto/input/annotations/ConfigurationContext;)Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;
    .locals 5

    .line 198
    invoke-virtual {p0}, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->getIndex()I

    move-result v0

    invoke-interface {p1}, Lcom/eltechs/axs/proto/input/annotations/ConfigurationContext;->getParametersCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const-string v1, "Parameter %d of the request handler method %s has type ByteBuffer; such argument must be the last one."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 200
    invoke-virtual {p0}, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->getIndex()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v3

    invoke-interface {p1}, Lcom/eltechs/axs/proto/input/annotations/ConfigurationContext;->getHandlerMethodName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v2

    .line 198
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    .line 202
    new-instance p0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/RemainingRequestDataAsByteBufferParameterReader;

    invoke-direct {p0}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/RemainingRequestDataAsByteBufferParameterReader;-><init>()V

    return-object p0
.end method

.method private static createString8Reader(Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;Lcom/eltechs/axs/proto/input/annotations/ConfigurationContext;)Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;
    .locals 7

    .line 172
    const-class v0, Lcom/eltechs/axs/proto/input/annotations/ParamLength;

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/proto/input/annotations/ParamLength;

    const-string v1, "Parameter %d of the request handler method %s has type String and must be tagged with @ParamLength."

    const/4 v2, 0x2

    .line 173
    new-array v3, v2, [Ljava/lang/Object;

    .line 175
    invoke-virtual {p0}, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->getIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-interface {p1}, Lcom/eltechs/axs/proto/input/annotations/ConfigurationContext;->getHandlerMethodName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 173
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    invoke-interface {v0}, Lcom/eltechs/axs/proto/input/annotations/ParamLength;->value()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/eltechs/axs/proto/input/annotations/ConfigurationContext;->findNamedParameter(Ljava/lang/String;)Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;

    move-result-object v0

    const-string v1, "Parameter %d of the request handler method %s specifies an invalid name of parameter holding the length."

    .line 178
    new-array v3, v2, [Ljava/lang/Object;

    .line 180
    invoke-virtual {p0}, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->getIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {p1}, Lcom/eltechs/axs/proto/input/annotations/ConfigurationContext;->getHandlerMethodName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 178
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0}, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->getIndex()I

    move-result v1

    invoke-virtual {p0}, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->getIndex()I

    move-result v3

    if-ge v1, v3, :cond_0

    move v1, v6

    goto :goto_0

    :cond_0
    move v1, v5

    :goto_0
    const-string v3, "Parameter %d of the request handler method %s must have its length specified by a preceding parameter."

    new-array v2, v2, [Ljava/lang/Object;

    .line 184
    invoke-virtual {p0}, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->getIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-interface {p1}, Lcom/eltechs/axs/proto/input/annotations/ConfigurationContext;->getHandlerMethodName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v6

    .line 182
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    .line 186
    new-instance p1, Lcom/eltechs/axs/proto/input/parameterReaders/impl/String8ParameterReader;

    invoke-static {p0}, Lcom/eltechs/axs/proto/input/impl/XRequestParameterReaderFactories;->selectRequestDataReaderForParameter(Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;)Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;

    move-result-object p0

    invoke-virtual {v0}, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->getIndex()I

    move-result v0

    invoke-direct {p1, p0, v0}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/String8ParameterReader;-><init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;I)V

    return-object p1
.end method

.method private static getEnumValue(Ljava/lang/Class;Ljava/lang/String;)Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Enum<",
            "+",
            "Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;"
        }
    .end annotation

    .line 284
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Enum;

    const/4 v0, 0x0

    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p0, v0

    .line 286
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 288
    check-cast v2, Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;

    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFlagsClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Enum<",
            "+",
            "Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;",
            ">;>;"
        }
    .end annotation

    .line 266
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 271
    :cond_0
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 272
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    check-cast p0, Ljava/lang/Class;

    return-object p0
.end method

.method private static selectRequestDataReaderForParameter(Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;)Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;
    .locals 1

    .line 157
    const-class v0, Lcom/eltechs/axs/proto/input/annotations/OOBParam;

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/eltechs/axs/proto/input/annotations/impl/NormalRequestDataReader;->INSTANCE:Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/eltechs/axs/proto/input/annotations/impl/OOBRequestDataReader;->INSTANCE:Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;

    :goto_0
    return-object p0
.end method

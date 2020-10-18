.class public Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer;
.super Ljava/lang/Object;
.source "AnnotationDrivenRequestDispatcherConfigurer.java"


# instance fields
.field private final reqCtxParamReadersFactory:Lcom/eltechs/axs/proto/input/annotations/RequestContextParamReadersFactory;

.field private final reqParamReadersFactory:Lcom/eltechs/axs/proto/input/annotations/RequestParamReadersFactory;

.field private final target:Lcom/eltechs/axs/proto/input/ConfigurableRequestsDispatcher;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/proto/input/ConfigurableRequestsDispatcher;Lcom/eltechs/axs/proto/input/annotations/RequestContextParamReadersFactory;Lcom/eltechs/axs/proto/input/annotations/RequestParamReadersFactory;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer;->target:Lcom/eltechs/axs/proto/input/ConfigurableRequestsDispatcher;

    .line 42
    iput-object p2, p0, Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer;->reqCtxParamReadersFactory:Lcom/eltechs/axs/proto/input/annotations/RequestContextParamReadersFactory;

    .line 43
    iput-object p3, p0, Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer;->reqParamReadersFactory:Lcom/eltechs/axs/proto/input/annotations/RequestParamReadersFactory;

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer;[Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;Ljava/lang/String;)Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer;->findNamedParameter([Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;Ljava/lang/String;)Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;

    move-result-object p0

    return-object p0
.end method

.method private buildRequestParser(Ljava/lang/reflect/Method;)Lcom/eltechs/axs/proto/input/annotations/impl/AnnotationDrivenRequestParser;
    .locals 5

    .line 92
    invoke-static {p1}, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->getMethodParameters(Ljava/lang/reflect/Method;)[Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    .line 93
    array-length v2, v0

    .line 95
    new-array v3, v2, [Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;

    :goto_0
    if-ge v1, v2, :cond_0

    .line 98
    invoke-direct {p0, p1, v0, v1}, Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer;->configureParameterReader(Ljava/lang/reflect/Method;[Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;I)Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    :cond_0
    new-instance p1, Lcom/eltechs/axs/proto/input/annotations/impl/AnnotationDrivenRequestParser;

    invoke-direct {p1, v3}, Lcom/eltechs/axs/proto/input/annotations/impl/AnnotationDrivenRequestParser;-><init>([Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;)V

    return-object p1
.end method

.method private configureParameterReader(Ljava/lang/reflect/Method;[Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;I)Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;
    .locals 5

    .line 116
    aget-object p3, p2, p3

    .line 118
    new-instance v0, Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer$1;-><init>(Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer;Ljava/lang/reflect/Method;[Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;)V

    .line 144
    const-class p1, Lcom/eltechs/axs/proto/input/annotations/RequestParam;

    invoke-virtual {p3, p1}, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/eltechs/axs/proto/input/annotations/RequestParam;

    if-nez p1, :cond_0

    .line 146
    iget-object p1, p0, Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer;->reqCtxParamReadersFactory:Lcom/eltechs/axs/proto/input/annotations/RequestContextParamReadersFactory;

    .line 147
    invoke-interface {p1, p3, v0}, Lcom/eltechs/axs/proto/input/annotations/RequestContextParamReadersFactory;->createReader(Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;Lcom/eltechs/axs/proto/input/annotations/ConfigurationContext;)Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer;->reqParamReadersFactory:Lcom/eltechs/axs/proto/input/annotations/RequestParamReadersFactory;

    .line 148
    invoke-interface {p1, p3, v0}, Lcom/eltechs/axs/proto/input/annotations/RequestParamReadersFactory;->createReader(Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;Lcom/eltechs/axs/proto/input/annotations/ConfigurationContext;)Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;

    move-result-object p1

    :goto_0
    const/4 p2, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, p2

    :goto_1
    const-string v3, "Resolved no parameter reader for the context parameter %d of the request handler method %s."

    const/4 v4, 0x2

    .line 150
    new-array v4, v4, [Ljava/lang/Object;

    .line 152
    invoke-virtual {p3}, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->getIndex()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v4, p2

    invoke-interface {v0}, Lcom/eltechs/axs/proto/input/annotations/ConfigurationContext;->getHandlerMethodName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, v1

    .line 150
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    return-object p1
.end method

.method private findNamedParameter([Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;Ljava/lang/String;)Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;
    .locals 4

    const/4 v0, 0x0

    .line 166
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 168
    const-class v3, Lcom/eltechs/axs/proto/input/annotations/ParamName;

    invoke-virtual {v2, v3}, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/eltechs/axs/proto/input/annotations/ParamName;

    if-eqz v3, :cond_0

    .line 169
    invoke-interface {v3}, Lcom/eltechs/axs/proto/input/annotations/ParamName;->value()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getNeededLocks(Ljava/lang/reflect/Method;)[Lcom/eltechs/axs/xserver/LocksManager$Subsystem;
    .locals 4

    .line 185
    const-class v0, Lcom/eltechs/axs/proto/input/annotations/GiantLocked;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    invoke-static {}, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->values()[Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    move-result-object p1

    return-object p1

    .line 190
    :cond_0
    const-class v0, Lcom/eltechs/axs/proto/input/annotations/Locks;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/eltechs/axs/proto/input/annotations/Locks;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 193
    new-array p1, v0, [Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    return-object p1

    .line 196
    :cond_1
    invoke-interface {p1}, Lcom/eltechs/axs/proto/input/annotations/Locks;->value()[Ljava/lang/String;

    move-result-object p1

    .line 197
    array-length v1, p1

    .line 199
    new-array v2, v1, [Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    :goto_0
    if-ge v0, v1, :cond_2

    .line 202
    aget-object v3, p1, v0

    invoke-static {v3}, Lcom/eltechs/axs/xserver/LocksManager$Subsystem;->valueOf(Ljava/lang/String;)Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private processOneHandler(ILjava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 3

    .line 77
    invoke-direct {p0, p3}, Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer;->buildRequestParser(Ljava/lang/reflect/Method;)Lcom/eltechs/axs/proto/input/annotations/impl/AnnotationDrivenRequestParser;

    move-result-object v0

    .line 78
    invoke-direct {p0, p3}, Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer;->getNeededLocks(Ljava/lang/reflect/Method;)[Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    move-result-object v1

    .line 79
    new-instance v2, Lcom/eltechs/axs/proto/input/annotations/impl/AnnotationDrivenOpcodeHandler;

    invoke-direct {v2, p2, p3, v1, v0}, Lcom/eltechs/axs/proto/input/annotations/impl/AnnotationDrivenOpcodeHandler;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;[Lcom/eltechs/axs/xserver/LocksManager$Subsystem;Lcom/eltechs/axs/proto/input/annotations/impl/AnnotationDrivenRequestParser;)V

    .line 81
    iget-object p2, p0, Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer;->target:Lcom/eltechs/axs/proto/input/ConfigurableRequestsDispatcher;

    invoke-interface {p2, p1, v2}, Lcom/eltechs/axs/proto/input/ConfigurableRequestsDispatcher;->installRequestHandler(ILcom/eltechs/axs/proto/input/OpcodeHandler;)V

    return-void
.end method


# virtual methods
.method public varargs configureDispatcher([Ljava/lang/Object;)V
    .locals 9

    const/4 v0, 0x0

    .line 54
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 56
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v6, v0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 58
    const-class v8, Lcom/eltechs/axs/proto/input/annotations/RequestHandler;

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Lcom/eltechs/axs/proto/input/annotations/RequestHandler;

    if-eqz v8, :cond_0

    .line 61
    invoke-interface {v8}, Lcom/eltechs/axs/proto/input/annotations/RequestHandler;->opcode()I

    move-result v8

    invoke-direct {p0, v8, v3, v7}, Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer;->processOneHandler(ILjava/lang/Object;Ljava/lang/reflect/Method;)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

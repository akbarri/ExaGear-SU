.class public abstract Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenEventParserConfigurer;
.super Ljava/lang/Object;
.source "AnnotationDrivenEventParserConfigurer.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static configureParameterReader([Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;I)Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;
    .locals 1

    .line 79
    aget-object p0, p0, p1

    .line 80
    sget-object p1, Lcom/eltechs/axs/proto/input/impl/EventParameterReaderFactory;->INSTANCE:Lcom/eltechs/axs/proto/input/annotations/RequestParamReadersFactory;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/eltechs/axs/proto/input/annotations/RequestParamReadersFactory;->createReader(Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;Lcom/eltechs/axs/proto/input/annotations/ConfigurationContext;)Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;

    move-result-object p0

    return-object p0
.end method

.method public static createParserRegistry(Ljava/lang/Class;)Lcom/eltechs/axs/proto/input/EventParsersRegistry;
    .locals 7

    .line 30
    new-instance v0, Lcom/eltechs/axs/proto/input/EventParsersRegistry;

    invoke-direct {v0}, Lcom/eltechs/axs/proto/input/EventParsersRegistry;-><init>()V

    .line 32
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v1, 0x0

    array-length v2, p0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    .line 34
    const-class v5, Lcom/eltechs/axs/proto/input/annotations/EventId;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/eltechs/axs/proto/input/annotations/EventId;

    if-eqz v5, :cond_1

    .line 37
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 39
    invoke-interface {v5}, Lcom/eltechs/axs/proto/input/annotations/EventId;->id()I

    move-result v5

    invoke-static {v4}, Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenEventParserConfigurer;->processOneMethod(Ljava/lang/reflect/Method;)Lcom/eltechs/axs/proto/input/annotations/impl/EventParser;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lcom/eltechs/axs/proto/input/EventParsersRegistry;->installEventParser(ILcom/eltechs/axs/proto/input/annotations/impl/EventParser;)V

    goto :goto_1

    :cond_0
    const-string v5, "Event parser method %s must be public and static"

    const/4 v6, 0x1

    .line 42
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static processOneMethod(Ljava/lang/reflect/Method;)Lcom/eltechs/axs/proto/input/annotations/impl/EventParser;
    .locals 5

    .line 57
    invoke-static {p0}, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->getMethodParameters(Ljava/lang/reflect/Method;)[Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    .line 58
    array-length v2, v0

    .line 60
    new-array v3, v2, [Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;

    :goto_0
    if-ge v1, v2, :cond_0

    .line 63
    invoke-static {v0, v1}, Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenEventParserConfigurer;->configureParameterReader([Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;I)Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    :cond_0
    new-instance v0, Lcom/eltechs/axs/proto/input/annotations/impl/EventParser;

    invoke-direct {v0, v3, p0}, Lcom/eltechs/axs/proto/input/annotations/impl/EventParser;-><init>([Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;Ljava/lang/reflect/Method;)V

    return-object v0
.end method
